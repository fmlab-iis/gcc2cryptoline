#include "common.hpp"
#include "helper.hpp"
#include "gimple_helper.hpp"

std::ostream DDEBUG(nullptr);
std::stringstream RESULT;
vector<string> result_vec;
const char* target_func_name = nullptr;
int WORD_SIZE;
bool is_debug = false;
bool dump = false;

bool USE_HEURISTIC = false;
bool found = false;
int plugin_is_GPL_compatible = 1;

static struct plugin_info my_gcc_plugin_info = {
    "1.0", "Plugin for converting GIMPLECryptoline to Typed Cryptoline"
};


namespace GCC2Cryptoline {
const pass_data pass_data_cryptoline = {
    GIMPLE_PASS, /* type */
    "gcc2cryptoline", /* name */
    OPTGROUP_NONE, /* optinfo_flags */
    TV_NONE, /* tv_id */
    PROP_gimple_any, /* properties_required */
    0, /* properties_provided */
    0, /* properties_destroyed */
    0, /* todo_flags_start */
    0, /* todo_flags_finish */
};




class pass_cryptoline : public gimple_opt_pass {
public:
    pass_cryptoline(gcc::context* ctxt)
        : gimple_opt_pass(pass_data_cryptoline, ctxt)
    {
    }

    /* opt_pass methods: */
  bool gate(function*) { return true; }
  virtual unsigned int execute(function*);

    struct parsed_object {
        std::string name;
        string type_name;
        int offset;
        parsed_object(std::string _name = "none", int _offset = -1, string _type_name = "")
        {
            name = _name,
            offset = _offset;
            type_name = _type_name;
        }
        std::string str() const
        {
            if (offset != -1) {
                return fmt::format("{}_{}", name, offset);
            } else {
                return name;
            }
        }
        std::string str_with_type() const
        {
            if (type_name != "") {
                return this->str() + '@' + type_name;

            } else {
                return this->str();
            }
        }
        bool operator<(const parsed_object& rhs) const
        {
            if (name != rhs.name) {
                return name < rhs.name;
            } else {
                return offset < rhs.offset;
            }
        }
        parsed_object operator+(const uint64_t added_offset)
        {
            parsed_object no = *this;
            if (no.offset == -1)
                no.offset = 0;
            no.offset += added_offset;
            return no;
        }
    };
    void parse_stmt(gimple* stmt);
    void parse_pointer_plus(tree lhs, tree op0, tree op1);
    void generate_header();
    void generate_footer();
    void add_lhs(string name);
    void add_lhs(parsed_object po);
    void add_rhs(string name);
    void add_rhs(parsed_object po);
    string translate_ssa_name(tree ssa_name);
    string get_tracker_key(tree expr);
    // string parse_gimple_call()
    string generate_mov(tree lhs, tree rhs);
    string generate_ADD_OVERFLOW(gimple* stmt);
    string generate_builtin_ia32_psrldi256(gimple* stmt);
    string parse_expr(tree exp);
    string parse_expr_type(tree exp);
    parsed_object parse_expr_raw(tree exp);
    string parse_conversion(tree lhs, tree op0);
    string parse_negation(tree lhs, tree op0);
    string parse_not(tree lhs, tree op0);
    string generate_binary_expr(tree_code expr_code, tree lhs, tree op0, tree op1);
    string parse_lshift(tree lhs, tree op0, tree op1);
    string parse_rshift(tree lhs, tree op0, tree op1);
    string parse_and(tree lhs, tree op0, tree op1);
    string parse_or(tree lhs, tree op0, tree op1);
    string parse_widen_mult(tree lhs, tree op0, tree op1);
    string parse_plus(tree lhs, tree op0, tree op1);
    string parse_sub(tree lhs, tree op0, tree op1);
    string get_expr_name(tree expr);
    string parse_mult(tree lhs, tree op0, tree op1);
    string parse_lt_or_le(tree lhs, tree op0, tree op1, bool equal);
    string parse_gt_or_ge(tree lhs, tree op0, tree op1, bool equal);
    string parse_eq(tree lhs, tree op0, tree op1, bool inverse);
    string parse_vec_unpack(tree lhs, tree op0, bool is_lo);
    string parse_vec_perm(tree lhs, tree op0, tree op1, tree op2);
    string parse_vec_widen_mult_unpack(tree lhs, tree op0, tree op1, bool is_lo);
    parsed_object get_vector_element(tree expr, uint64_t index);
    struct pointer_track {
        string original_key;
        int total_offset;
    };
    struct constant_track {
        int size;
        uint64_t value_lo;
        uint64_t value_hi;
    };
    int counter = 0;
    std::map<string, pointer_track> pointer_tracker;
    std::map<string, constant_track> constant_tracker;
    std::map<parsed_object, int> lhs_tracker;
    std::map<parsed_object, int> rhs_tracker;
    std::set<parsed_object> unused_lhs;
    std::set<parsed_object> undefined_rhs;
};
unsigned int pass_cryptoline::execute(function* fun)
{
    using namespace std;
    gimple_stmt_iterator gsi;
    basic_block bb;
    const char* func_name = get_name(fun->decl);
    if (strcmp(func_name, target_func_name))
        return 0;
    found = true;

    FOR_EACH_BB_FN(bb, fun)
    {
        for (gsi = gsi_start_phis(bb); !gsi_end_p(gsi);
             gsi_next(&gsi)) {
            gimple* stmt = gsi_stmt(gsi);
            if (is_debug) {
              print_gimple_stmt_custom(stdout, stmt, 0, TDF_NONE);
            }
        }
        // DEBUG << "current function " << get_name(fun->decl) << endl;
        for (gsi = gsi_start_bb(bb); !gsi_end_p(gsi); gsi_next(&gsi)) {
            gimple* stmt = gsi_stmt(gsi);
            if (is_debug) {
              print_gimple_stmt_custom(stdout, stmt, 0, TDF_NONE);
            }
            parse_stmt(stmt);
            if (is_debug) {
                DEBUG << RESULT.str();
            }
            result_vec.push_back(RESULT.str());
            RESULT.str("");
        }
    }
    for (auto& p : lhs_tracker) {
        parsed_object key = p.first;
        int last_see = p.second;
        if (last_see > rhs_tracker[key]) {
            unused_lhs.insert(key);
        }
    }
    for (const parsed_object& e : undefined_rhs) {
        DEBUG << "undefiend " << e.str() << endl;
    }
    for (const parsed_object& e : unused_lhs) {
        DEBUG << "unused " << e.str() << endl;
    }
    generate_header();
    auto it = result_vec.begin();
    FOR_EACH_BB_FN(bb, fun)
    {
        // DEBUG << "current function " << get_name(fun->decl) << endl;
        cout << endl
             << fmt::format("/* BB's index is {} */", bb->index) << endl
             << endl;
        for (gsi = gsi_start_phis(bb); !gsi_end_p(gsi);
             gsi_next(&gsi)) {
            gimple* stmt = gsi_stmt(gsi);
            print_gimple_stmt_custom(stdout, stmt, 0, TDF_NONE);
        }
        for (gsi = gsi_start_bb(bb); !gsi_end_p(gsi); gsi_next(&gsi)) {
            gimple* stmt = gsi_stmt(gsi);
            print_gimple_stmt_custom(stdout, stmt, 0, TDF_NONE);
            cout << *it;
            it++;
        }
        /* Thanks to dragonegg for how to get fallthrough edges */
        edge e;
        edge_iterator ei;
        FOR_EACH_EDGE(e, ei, bb->succs)
        if (e->flags & EDGE_FALLTHRU) {
            input_location = e->goto_locus;
            auto dest = e->dest;
            string label_name = get_basic_block_name(dest);
            cout << fmt::format("/* goto {} */", label_name) << endl;
            cout << fmt::format("/* TODO: unconditional jump */", label_name) << endl;
            break;
        }
    }
    generate_footer();
    return 0;
}
string pass_cryptoline::translate_ssa_name(tree ssa_name)
{
    assert(TREE_CODE(ssa_name) == SSA_NAME);
    return get_ssa_name_str(ssa_name) + to_string(SSA_NAME_VERSION(ssa_name));
}
string pass_cryptoline::get_tracker_key(tree expr)
{
    auto code = TREE_CODE(expr);
    if (code == SSA_NAME) {
        return translate_ssa_name(expr);
    } else if (code == VAR_DECL) {
        return get_name(expr);
    } else {
        NOT_IMPLEMENT;
    }
    return "";
}
void pass_cryptoline::add_lhs(std::string name)
{
    counter++;
    lhs_tracker[name] = counter;
    DEBUG << "insert lhs " << name << std::endl;
}
void pass_cryptoline::add_lhs(parsed_object po)
{
    counter++;
    lhs_tracker[po] = counter;
    DEBUG << "insert lhs " << po.str() << std::endl;
}
void pass_cryptoline::add_rhs(std::string name)
{
    counter++;
    if (lhs_tracker[name] == 0) {
        undefined_rhs.insert(name);
        DEBUG << "insert rhs " << name << std::endl;
    }
    rhs_tracker[name] = counter;
}
void pass_cryptoline::add_rhs(parsed_object po)
{
    counter++;
    if (lhs_tracker[po] == 0) {
        undefined_rhs.insert(po);
        DEBUG << "insert rhs " << po.str() << std::endl;
    }
    rhs_tracker[po] = counter;
}
void pass_cryptoline::generate_header()
{
    using namespace std;
    cout << "proc main (";
    cout << ") = " << endl;
    cout << "{" << endl;
    cout << "  "
         << "true" << endl;
    cout << "  "
         << "&&" << endl;
    cout << "  "
         << "true" << endl;
    cout << "}" << endl;
    cout << endl
         << endl;

    cout << "/* Start with undefined rhs */" << endl;
    for (auto it = undefined_rhs.begin(); it != undefined_rhs.end(); it++) {
        // if (it != undefined_rhs.begin())
        cout << "mov " << it->str_with_type() << " _;" << endl;
    }
    cout << "/* End with undefined rhs */" << endl
         << endl
         << endl;
}
void pass_cryptoline::generate_footer()
{
    using namespace std;
    cout << endl
         << endl;
    cout << "/* Start with unused lhs */" << endl;
    for (auto it = unused_lhs.begin(); it != unused_lhs.end(); it++) {
        cout << fmt::format("mov _ {};", it->str_with_type()) << endl;
    }
    cout << "/* End with unsed lhs */" << endl
         << endl
         << endl;
    cout << "{" << endl;
    cout << "  "
         << "true" << endl;
    cout << "  "
         << "&&" << endl;
    cout << "  "
         << "true" << endl;
    cout << "}" << endl;
}
void pass_cryptoline::parse_stmt(gimple* stmt)
{
    using namespace std;
    try {
        switch (gimple_code(stmt)) {
        case GIMPLE_ASSIGN: {
            DEBUG << "Assignment" << endl;
            gassign* assign_stmt = as_a<gassign*>(stmt);
            tree lhs = gimple_assign_lhs(assign_stmt);
            // assert(TREE_CODE(lhs) == SSA_NAME && "lhs is not SSA_NAME");
            if (get_gimple_rhs_class(gimple_expr_code(stmt)) == GIMPLE_SINGLE_RHS) {
                tree rhs = gimple_assign_rhs1(assign_stmt);
                assert(get_gimple_rhs_class(gimple_expr_code(stmt)) == GIMPLE_SINGLE_RHS);
                DEBUG << "===== generate assign" << endl;
                RESULT << generate_mov(lhs, rhs);
            } else {
                tree_code code = gimple_assign_rhs_code(assign_stmt);
                // tree type = TREE_TYPE(lhs);
                tree op0, op1, op2;

                switch (get_gimple_rhs_class(code)) {
                case GIMPLE_TERNARY_RHS: {
                    op0 = gimple_assign_rhs1(assign_stmt);
                    op1 = gimple_assign_rhs2(assign_stmt);
                    op2 = gimple_assign_rhs3(assign_stmt);
                    DEBUG << "Ternary operator" << endl;
                    break;
                }
                case GIMPLE_BINARY_RHS: {
                    op0 = gimple_assign_rhs1(assign_stmt);
                    op1 = gimple_assign_rhs2(assign_stmt);
                    DEBUG << "Binary operator" << endl;
                    break;
                }
                case GIMPLE_UNARY_RHS: {
                    op0 = gimple_assign_rhs1(assign_stmt);
                    DEBUG << "UNARY operator" << endl;
                    break;
                }
                default:
                    DEBUG << "error" << endl;
                    assert(false && "Unhandled GIMPLE statement");
                }
                switch (code) {
                case NOP_EXPR: {
                    DEBUG << "NOP EXPR" << endl;
                    assert(get_gimple_rhs_class(code) == GIMPLE_UNARY_RHS);
                    RESULT << parse_conversion(lhs, op0);
                    break;
                }
                case CONVERT_EXPR: {
                    DEBUG << "CONVERT EXPR" << endl;
                    assert(get_gimple_rhs_class(code) == GIMPLE_UNARY_RHS);
                    RESULT << parse_conversion(lhs, op0);
                    break;
                }
                case NEGATE_EXPR: {
                    DEBUG << "NEGATE EXPR" << endl;
                    assert(get_gimple_rhs_class(code) == GIMPLE_UNARY_RHS);
                    RESULT << parse_negation(lhs, op0);
                    break;
                }
                case BIT_NOT_EXPR: {
                    DEBUG << "BIT_NOT_EXPR" << endl;
                    assert(get_gimple_rhs_class(code) == GIMPLE_UNARY_RHS);
                    RESULT << parse_not(lhs, op0);
                    break;
                }
                case PLUS_EXPR: {
                    DEBUG << "PLUS" << endl;
                    RESULT << generate_binary_expr(PLUS_EXPR, lhs, op0, op1);
                    break;
                }
                case MINUS_EXPR: {
                    DEBUG << "SUB" << endl;
                    RESULT << generate_binary_expr(MINUS_EXPR, lhs, op0, op1);
                    break;
                }
                case MULT_EXPR: {
                    DEBUG << "MULT" << endl;
                    RESULT << generate_binary_expr(MULT_EXPR, lhs, op0, op1);
                    break;
                }
                case WIDEN_MULT_EXPR: {
                    DEBUG << "WIDEN MULT" << endl;
                    DEBUG << "generate WIDEN mult ==========" << endl;
                    RESULT << generate_binary_expr(WIDEN_MULT_EXPR, lhs, op0, op1);
                    break;
                };
                case POINTER_PLUS_EXPR: {
                    DEBUG << "POINTER PLUS" << endl;
                    parse_pointer_plus(lhs, op0, op1);
                    break;
                }
                case LSHIFT_EXPR: {
                    DEBUG << "LSHIFT_EXPR" << endl;
                    RESULT << parse_lshift(lhs, op0, op1);
                    break;
                }
                case RSHIFT_EXPR: {
                    DEBUG << "RSHIFT_EXPR" << endl;
                    RESULT << parse_rshift(lhs, op0, op1);
                    break;
                }
                case BIT_IOR_EXPR: {
                    DEBUG << "BIT_IOR_EXPR" << endl;
                    RESULT << generate_binary_expr(BIT_IOR_EXPR, lhs, op0, op1);
                    break;
                }
                case BIT_AND_EXPR: {
                    DEBUG << "BIT_AND_EXPR" << endl;
                    RESULT << generate_binary_expr(BIT_AND_EXPR, lhs, op0, op1);
                    break;
                }
                case TRUNC_DIV_EXPR: {
                    DEBUG << "TRUNC_DIV_EXPR" << endl;
                    RESULT << "/* TODO: Skip translation for integer division */" << endl;
                    break;
                }
                case BIT_XOR_EXPR: {
                    DEBUG << "BIT_XOR_EXPR" << endl;
                    RESULT << "/* TODO: Skip translation for bit xor */" << endl;
                    break;
                }
                case LT_EXPR: {
                    DEBUG << "LT_EXPR" << endl;
                    RESULT << parse_lt_or_le(lhs, op0, op1, false);
                    break;
                }
                case LE_EXPR: {
                    DEBUG << "LE_EXPR" << endl;
                    RESULT << parse_lt_or_le(lhs, op0, op1, true);
                    break;
                }
                case GT_EXPR: {
                    DEBUG << "GT_EXPR" << endl;
                    RESULT << parse_gt_or_ge(lhs, op0, op1, false);
                    break;
                }
                case GE_EXPR: {
                    DEBUG << "GE_EXPR" << endl;
                    RESULT << parse_gt_or_ge(lhs, op0, op1, true);
                    break;
                }
                case EQ_EXPR: {
                    DEBUG << "EQ_EXPR" << endl;
                    RESULT << parse_eq(lhs, op0, op1, false);
                    break;
                }
                case NE_EXPR: {
                    DEBUG << "NE_EXPR" << endl;
                    RESULT << parse_eq(lhs, op0, op1, true);
                    break;
                }
                case MAX_EXPR: {
                    DEBUG << "MAX_EXPR" << endl;
                    RESULT << "/* TODO: Skip translation for max expr */" << endl;
                    break;
                }
                case VEC_UNPACK_LO_EXPR: {
                    DEBUG << "VEC_UNPACK_LO_EXPR" << endl;
                    RESULT << parse_vec_unpack(lhs, op0, true);
                    break;
                }
                case VEC_UNPACK_HI_EXPR: {
                    DEBUG << "VEC_UNPACK_HI_EXPR" << endl;
                    RESULT << parse_vec_unpack(lhs, op0, false);
                    break;
                }
                case VEC_PERM_EXPR: {
                    DEBUG << "VEC_PERM_EXPR" << endl;
                    RESULT << parse_vec_perm(lhs, op0, op1, op2);
                    break;
                }
                case VEC_WIDEN_MULT_LO_EXPR: {
                    DEBUG << "VEC_WIDEN_MULT_LO_EXPR" << endl;
                    RESULT << parse_vec_widen_mult_unpack(lhs, op0, op1, true);
                    break;
                }
                case VEC_WIDEN_MULT_HI_EXPR: {
                    DEBUG << "VEC_WIDEN_MULT_HI_EXPR" << endl;
                    RESULT << parse_vec_widen_mult_unpack(lhs, op0, op1, false);
                    break;
                }
                default: {
                    RESULT << "/* TODO: Not handled */" << endl;
                    cerr << "tree code is " << get_tree_code_name(code) << endl;
                    assert(false && "Parse Expression not handled");
                    break;
                }
                }
            }
            break;
        }
        case GIMPLE_CALL: {
            if (gimple_call_internal_p(stmt)) {
                // uint64_t arg_num = gimple_call_num_args(stmt);
                auto ifn_code = gimple_call_internal_fn(stmt);
                switch (ifn_code) {
                case IFN_ADD_OVERFLOW: {
                    DEBUG << "ADD_OVERFLOW" << endl;
                    RESULT << generate_ADD_OVERFLOW(stmt);
                    break;
                }
                default: {
                    throw "GIMPLE_CALL use not handled internal function";
                    break;
                }
                }
            } else if (gimple_call_builtin_p(stmt)) {
                gcall* call = as_a<gcall*>(stmt);
                tree callee = gimple_call_fndecl(call);
                const string fn_name = string(IDENTIFIER_POINTER(DECL_NAME(callee)));
                DEBUG << fn_name << endl;
                if (fn_name == "__builtin_ia32_psrldi256") {
                    RESULT << generate_builtin_ia32_psrldi256(stmt);
                } else {
                    throw "GIMPLE_CALL use not handled builtin function";
                }
            } else {
                throw "GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte";
            }
            break;
        }
        case GIMPLE_GOTO: {
            DEBUG << "/* GIMPLE GOTO */" << endl;
            break;
        }
        case GIMPLE_RETURN: {
            DEBUG << "/* GIMPLE RETURN */" << endl;

            break;
        }
        case GIMPLE_LABEL: {
            DEBUG << "/* GIMPLE LABEL */" << endl;
            break;
        }
        case GIMPLE_COND: {
            RESULT << "/* Fix: Skip GIMPLE_COND, need to take it into consideration */" << endl;
            /* copy from dragonegg*/
            edge true_edge, false_edge;
            extract_true_false_edges_from_block(gimple_bb(stmt), &true_edge,
                &false_edge);
            string true_label_name = get_basic_block_name(true_edge->dest);
            string false_label_name = get_basic_block_name(false_edge->dest);
            // DEBUG << true_label_name << " " << false_label_name << endl;
            RESULT << fmt::format("/* Note: True label: {}, False label: {} */", true_label_name, false_label_name) << endl;
            break;
        }
        case GIMPLE_PHI: {
            DEBUG << "GIMPLE_PHI" << endl;
            break;
        }
        default: {
            assert(false && "GIMPLE Code Not Matched");
            break;
        }
        }
    } catch (const char* str) {
        RESULT << fmt::format("/* TODO: skipped, {} */", str) << endl;
    } catch (...) {
    }
    return;
}
void pass_cryptoline::parse_pointer_plus(tree lhs, tree op0, tree op1)
{
    assert(TREE_CODE(lhs) == SSA_NAME && "pointer_plus lhs is not SSA_NAME");
    string exception_msg = "";
    if (TREE_CODE(op0) != SSA_NAME) {
        exception_msg += "pointer plus op0 is not SSA_NAME";
    }
    if (TREE_CODE(op1) != INTEGER_CST) {
        exception_msg += "pointer plus op1 is not INTEGET_CST";
    }
    if (exception_msg != "") {
        throw exception_msg;
    }
    auto lhs_key = get_tracker_key(lhs);
    auto op0_key = get_tracker_key(op0);
    int offset = get_integer_value(op1);
    if (pointer_tracker.find(lhs_key) == pointer_tracker.end()) {
        pointer_track& pt_lhs = pointer_tracker[lhs_key];
        pt_lhs.original_key = op0_key;
        pt_lhs.total_offset = offset;
    } else {
        pointer_track& pt_lhs = pointer_tracker[lhs_key];
        pointer_track& pt_op0 = pointer_tracker[op0_key];
        pt_lhs.original_key = pt_op0.original_key;
        pt_lhs.total_offset = pt_op0.total_offset + offset;
    }
}
std::string pass_cryptoline::generate_mov(tree lhs, tree rhs)
{
    vector<tree_code> not_handled = {
        TARGET_MEM_REF,
        // CONSTRUCTOR
    };
    using namespace std;
    std::stringstream output;
    DEBUG << get_tree_name((lhs)) << endl;
    DEBUG << get_tree_name(TREE_TYPE(lhs)) << endl;
    DEBUG << get_tree_name((rhs)) << endl;
    DEBUG << get_tree_name(TREE_TYPE(rhs)) << endl;
    tree_code lhs_code = TREE_CODE(lhs);
    tree_code rhs_code = TREE_CODE(rhs);
    for (tree_code& tc : not_handled) {
        if (lhs_code == tc || rhs_code == tc) {
            output << fmt::format("/* TODO: Skip translation for {} */", get_tree_code_name(tc)) << endl;
            return output.str();
        }
    }
    parsed_object plhs, prhs;
    int lhs_size = get_expr_size(lhs);
    switch (TREE_CODE(rhs)) {
    case SSA_NAME: {
        DEBUG << "SSA_NAME" << endl;
        plhs = parse_expr_raw(lhs);
        prhs = parse_expr_raw(rhs);
        if (TREE_CODE(lhs) == SSA_NAME) {
            string lhs_key = get_tracker_key(lhs);
            string rhs_key = get_tracker_key(rhs);
            if (constant_tracker.find(rhs_key) != constant_tracker.end()) {
                constant_track& ctl = constant_tracker[lhs_key];
                constant_track& ctr = constant_tracker[rhs_key];
                ctl.size = ctr.size;
                ctl.value_hi = ctr.value_lo;
                ctl.value_lo = ctr.value_lo;
            }
        }
        if (TREE_CODE(lhs) == MEM_REF && get_type_size(lhs) != get_expr_size(rhs)) {
            if (!is_vector_type(rhs) && get_expr_size(rhs) == 2 * get_type_size(lhs)) {
                parsed_object plhs2 = plhs;
                plhs2.offset += get_type_size(lhs) / 8;
                output << fmt::format("{}split {} {} {} {};",
                              get_signed_flag(lhs),
                              plhs2.str(),
                              plhs.str(),
                              prhs.str(),
                              get_type_size(lhs))
                       << endl;
                output << fmt::format("vpc {} {} {};",
                              plhs.type_name,
                              plhs.str(),
                              plhs.str())
                       << endl;
                output << fmt::format("vpc {} {} {};",
                              plhs2.type_name,
                              plhs2.str(),
                              plhs2.str())
                       << endl;
                add_lhs(plhs);
                add_lhs(plhs2);
                add_rhs(prhs);
            } else if (is_vector_type(rhs)) {
                uint64_t vec_len = get_vector_length(rhs);
                for (unsigned int i = 0; i < vec_len; i++) {
                    uint64_t step = get_type_size(lhs) / 8;
                    output << fmt::format(
                                  "mov {} {}_{};",
                                  (plhs + step * i).str(),
                                  prhs.str(), i * step)
                           << endl;

                    add_lhs(plhs + step * i);
                    add_rhs(parsed_object(prhs.str(), i * step));
                }
            } else {
                throw "no heuristics, need self translating";
                NOT_IMPLEMENT;
            }

        } else {
            if (!is_vector_type(lhs)) {
                output << fmt::format("mov {} {};", plhs.str(), prhs.str()) << endl;
                DEBUG << plhs.str() << endl;
                DEBUG << plhs.str_with_type() << endl;
                add_lhs(plhs);
                add_rhs(prhs);

            } else {
                uint64_t vec_len = get_vector_length(lhs);
                for (unsigned int i = 0; i < vec_len; i++) {
                    uint64_t step = get_type_size(lhs) / 8;
                    output << fmt::format(
                                  "mov {}_{} {};",
                                  plhs.str(), i * step,
                                  (prhs + step * i).str())
                           << endl;
                    add_lhs(parsed_object(plhs.str(), i * step));
                    add_rhs(prhs + step * i);
                }
            }
        }
        break;
    }
    case MEM_REF: {
        DEBUG << "MEM_REF" << std::endl;
        plhs = parse_expr_raw(lhs);
        prhs = parse_expr_raw(rhs);
        if (get_expr_size(lhs) != get_type_size(rhs)) {
            if (get_expr_size(lhs) == 2 * get_type_size(rhs) && !is_vector_type(lhs)) {
                parsed_object prhs2 = prhs;
                prhs2.offset += get_type_size(rhs) / 8;
                output << fmt::format("join {} {} {};",
                              plhs.str(),
                              prhs2.str(),
                              prhs.str())
                       << endl;
                add_lhs(plhs);
                add_rhs(prhs);
                add_rhs(prhs2);

            } else if (is_vector_type(lhs)) {
                uint64_t vec_len = get_vector_length(lhs);
                for (unsigned int i = 0; i < vec_len; i++) {
                    uint64_t step = get_type_size(lhs) / 8;
                    output << fmt::format(
                                  "mov {}_{} {};",
                                  plhs.str(), i * step,
                                  (prhs + step * i).str())
                           << endl;
                    add_lhs(parsed_object(plhs.str(), i * step));
                    add_rhs(prhs + step * i);
                }
            } else {
                DEBUG << get_expr_size(lhs) << "  " << get_type_size(rhs) << endl;
                throw "no heuristics ,need self translating";
                NOT_IMPLEMENT;
            }

        } else {
            output << fmt::format("mov {} {};", plhs.str(), prhs.str()) << endl;
            DEBUG << plhs.str() << endl;
            add_rhs(prhs);
            add_lhs(plhs);
        }
        break;
    }
    case ADDR_EXPR: {
        DEBUG << "ADDR_EXPR" << endl;
        output << "/* TODO: Skipped, ADDR_EXPR, maybe need self translate */" << endl;
        break;
    }
    case INTEGER_CST: {
        DEBUG << "INTEGER_CST" << endl;
        plhs = parse_expr_raw(lhs);
        int lhs_size = get_expr_size(lhs);
        if (lhs_size > 64) {
            int hi = get_integer_value_high(rhs);
            int lo = get_integer_value_low(rhs);
            if (TREE_CODE(lhs) == SSA_NAME) {
                string lhs_key = get_tracker_key(lhs);
                constant_track& ct = constant_tracker[lhs_key];
                ct.size = get_integer_size(rhs);
                ct.value_hi = hi;
                ct.value_lo = lo;
            }
            output << fmt::format("mov {} {};", plhs.str(), get_constant_str(rhs, true));
            add_lhs(plhs);
        } else {
            uint64_t value = get_integer_value_low(rhs);
            if (TREE_CODE(lhs) == SSA_NAME) {
                string lhs_key = get_tracker_key(lhs);
                constant_track& ct = constant_tracker[lhs_key];
                ct.size = get_integer_size(rhs);
                ct.value_lo = value;
                ct.value_hi = 0;
      }
      output << fmt::format("mov {} {};", plhs.str(),
                            get_constant_str(rhs, true))
             << endl;
      add_lhs(plhs);
    }
    break;
  }
  case VECTOR_CST: {
    plhs = parse_expr_raw(lhs);
    vector<string> v = parse_vector_cst(rhs, get_vector_length(lhs));
    for (unsigned int i = 0; i < v.size(); i++) {
      auto s = v[i];
      if (TREE_CODE(lhs) == SSA_NAME) {
        if (TREE_CODE(TREE_TYPE(lhs)) == VECTOR_TYPE) {
          output << fmt::format("mov {}_{} {};", plhs.str(), i, s) << endl;

          add_lhs(plhs.str() + "_" + to_string(i));
        } else {
          NOT_IMPLEMENT;
        }
      } else if (TREE_CODE(lhs) == MEM_REF) {
        uint64_t step = get_type_size(lhs) / 8;
        output << fmt::format("mov {} {};", (plhs + step * i).str(), s) << endl;

        add_lhs(plhs + step * i);

      } else {
        NOT_IMPLEMENT;
      }
    }
    break;
  }
  case ARRAY_REF: {
    DEBUG << "It's array reference" << endl;
    plhs = parse_expr_raw(lhs);
    DEBUG << get_expr_size(rhs) << endl;
    int ele_size = get_type_size(rhs);
    int array_lower_bound = get_integer_value(array_ref_low_bound(rhs));
    assert(ele_size <= 64);
    DEBUG << "arary element size is " << ele_size << "array lower bound is "
          << array_lower_bound << endl;
    tree op0, op1;
    op0 = TREE_OPERAND(rhs, 0);
    op1 = TREE_OPERAND(rhs, 1);
    uint64_t offset = 0;
    string array_name;
    parsed_object pop0 = parse_expr_raw(op0);
    array_name = pop0.name;
    offset = pop0.offset;
    DEBUG << array_name << endl;
    DEBUG << parse_expr_raw(op1).str() << endl;
    if (TREE_CODE(op1) == INTEGER_CST) {
      int index = get_integer_value(op1);
      output << fmt::format("mov {} {}_{};", plhs.str(), array_name,
                            offset + ele_size / 8 * index)
             << endl;
      parsed_object prhs;
      prhs.name = array_name;
      prhs.offset = offset + ele_size / 8 * index;
      prhs.type_name = generate_cryptoline_type(op0);
      add_lhs(plhs);
      add_rhs(prhs);

    } else {
      output << "/* TODO: arary index is not constant is not implemented */"
             << endl;
    }

    break;
  }
  case COMPONENT_REF: {
    plhs = parse_expr_raw(lhs);
    prhs = parse_expr_raw(rhs);
    if (lhs_code == COMPONENT_REF) {
      output << "/* lhs field " << get_component_field_name(lhs)
             << "'s offset is " << get_component_field_offset(lhs) << " */"
             << endl;
    }
    output << "/* rhs field " << get_component_field_name(rhs)
           << "'s offset is " << get_component_field_offset(rhs) << " */"
           << endl;
    DEBUG << "/* rhs field " << get_component_field_name(rhs) << "'s offset is "
          << get_component_field_offset(rhs) << " */" << endl;
    output << fmt::format("mov {} {};", plhs.str(), prhs.str()) << endl;
    add_lhs(plhs);
    add_rhs(prhs);
    break;
  }
  case BIT_FIELD_REF: {
    plhs = parse_expr_raw(lhs);
    tree r = TREE_OPERAND(rhs, 0);
    parsed_object pr = parse_expr_raw(r);
    uint64_t offset = get_integer_value(TREE_OPERAND(rhs, 2)) / 8;

    /* for vector, calculate the index */
    output << fmt::format("mov {} {}_{};", plhs.str(), pr.str(), offset)
           << endl;
    add_lhs(plhs);
    add_rhs(pr.str() + "_" + to_string(offset));
    break;
  }
  case VAR_DECL: {
    output << "/* TODO: Skip VAR_DECL, need self translate, maybe need read "
              "output gimple */"
           << endl;

    break;
  }
  case REALPART_EXPR: {
    DEBUG << "REAL" << endl;
    assert(get_expr_size(lhs) <= 64);
    plhs = parse_expr_raw(lhs);
    /* extract the ssa_name from realpart_expr */
    prhs = parse_expr_raw(TREE_OPERAND(rhs, 0));
    DEBUG << plhs.str() << " " << prhs.str() << endl;
    output << fmt::format("mov {} {}_REAL;", plhs.str(), prhs.str()) << endl;
    add_lhs(plhs);
    add_rhs(prhs.str() + "_REAL");
    break;
  }
  case IMAGPART_EXPR: {
    DEBUG << "IMAG" << endl;
    assert(get_expr_size(lhs) <= 64);
    plhs = parse_expr_raw(lhs);
    /* extract the ssa_name from imagepart_expr */
    prhs = parse_expr_raw(TREE_OPERAND(rhs, 0));
    DEBUG << plhs.str() << " " << prhs.str() << endl;
    output << fmt::format("mov {} {}_IMAGE;", plhs.str(), prhs.str()) << endl;
    add_lhs(plhs);
    add_rhs(prhs.str() + "_IMAGE");
    break;
  }
  case CONSTRUCTOR: {
    DEBUG << "CONSTRUCTOR" << endl;
    tree rhs_type = TREE_TYPE(rhs);
    tree lhs_type = TREE_TYPE(lhs);
    if (TREE_CODE(rhs_type) == VECTOR_TYPE) {
      assert(TREE_CODE(lhs_type) == VECTOR_TYPE);
      poly_uint64 full_nelts = TYPE_VECTOR_SUBPARTS(TREE_TYPE(rhs));
      uint64_t num_elts = full_nelts.to_constant();
      /* copied from dragonegg */
      unsigned HOST_WIDE_INT ix;
      tree elt_index, elt_value;

      plhs = parse_expr_raw(lhs);
      FOR_EACH_CONSTRUCTOR_ELT(CONSTRUCTOR_ELTS(rhs), ix, elt_index,
                               elt_value) {
        parsed_object pelt = parse_expr_raw(elt_value);
        output << fmt::format("mov {}_{} {};", plhs.str(), ix, pelt.str())
               << endl;
        add_lhs(fmt::format("{}_{}", plhs.str(), ix));
        add_rhs(pelt);
      }
      assert(!(ix + 1 < num_elts) && "some strange things happened");
    } else {
      output << "/* TODO: Skip translation for constructor */" << endl;
    }
    break;
  }
  case TARGET_MEM_REF: {
    DEBUG << "TARGET_MEM_REF" << endl;
    output << "/* TODO: Skip translation for target_mem_ref */" << endl;
    break;
  }
  case VIEW_CONVERT_EXPR: {
    DEBUG << "VIEW_CONVERT_EXPR" << endl;
    tree op0;
    op0 = TREE_OPERAND(rhs, 0);
    parsed_object plhs = parse_expr_raw(lhs);
    parsed_object pop0 = parse_expr_raw(op0);
    DEBUG << get_tree_name(op0) << endl;
    if (is_vector_type(lhs)) {
      uint64_t lhs_ele_size = get_type_size(lhs) >> 3;
      if (is_vector_type(op0)) {
        uint64_t op0_ele_size = get_type_size(op0) >> 3;
        if (lhs_ele_size != op0_ele_size) {
          throw "lhs element size != rhs element size ";
        }
        uint64_t vec_len = get_vector_length(op0);
        for (unsigned int i = 0; i < vec_len; i++) {
          uint64_t step = get_type_size(lhs) / 8;
          output << fmt::format("mov {} {}_{};", (plhs + step * i).str(),
                                pop0.str(), i * step)
                 << endl;

          add_lhs(plhs + step * i);
          add_rhs(parsed_object(pop0.str(), i * step));
        }
      }
    } else {
      throw "NOT_IMPLEMENT";
    }
    break;
  }
  default: {
    cerr << "tree code is " << get_tree_name(rhs) << endl;
    assert(false && "generate bvAssigin not handled");
    break;
  }
  }

  return output.str();
}
string pass_cryptoline::generate_binary_expr(tree_code expr_code, tree lhs,
                                             tree op0, tree op1) {
  stringstream output;
  string instr = "";
  switch (expr_code) {
  case PLUS_EXPR: {
    instr = get_signed_flag(lhs) + "add";
    break;
  }
  case MINUS_EXPR: {
    instr = get_signed_flag(lhs) + "sub";
    break;
  }
  case MULT_EXPR: {
    instr = get_signed_flag(lhs) + "mul";
    break;
  }
  case WIDEN_MULT_EXPR: {
    instr = get_signed_flag(lhs) + "mulj";
    break;
  }
  case BIT_IOR_EXPR: {
    instr = "or";
    break;
  }
  case BIT_AND_EXPR: {
    instr = "and";
    break;
  }
  }
  parsed_object plhs, pop0, pop1;
  plhs = parse_expr_raw(lhs);
  if (instr == "or" || instr == "and") {
    output << fmt::format(
                  "/* TODO: Bitwise And/Or , may need assert and assume */")
           << endl;
    instr = instr + " " + generate_cryptoline_type(lhs);
  }
  int lhs_size = get_expr_size(lhs);
  tree_code op0_code = TREE_CODE(op0);
  tree_code op1_code = TREE_CODE(op1);
  if (op0_code == SSA_NAME && op1_code == SSA_NAME) {
    pop0 = parse_expr_raw(op0);
    pop1 = parse_expr_raw(op1);
    if (TREE_CODE(TREE_TYPE(lhs)) != VECTOR_TYPE) {
      output << fmt::format("{} {} {} {};", instr, plhs.str(), pop0.str(),
                            pop1.str())
             << endl;
      add_lhs(plhs);
      add_rhs(pop0);
      add_rhs(pop1);

    } else {
      uint64_t vec_len = get_vector_length(lhs);
      uint64_t type_size = get_type_size(lhs) / 8;
      for (uint64_t i = 0; i < vec_len; i++) {
        output << fmt::format("{} {}_{} {}_{} {}_{};", instr, plhs.str(),
                              i * type_size, pop0.str(), i * type_size,
                              pop1.str(), i * type_size)
               << endl;
        add_lhs(parsed_object(plhs.str(), i * type_size));
        add_rhs(parsed_object(pop0.str(), i * type_size));
        add_rhs(parsed_object(pop1.str(), i * type_size));
      }
    }
  } else if (op0_code == VECTOR_CST) {
    pop1 = parse_expr_raw(op1);
    vector<string> v = parse_vector_cst(op0, get_vector_length(lhs));
    uint64_t type_size = get_type_size(lhs) / 8;
    for (unsigned int i = 0; i < v.size(); i++) {
      auto s = v[i];
      output << fmt::format("{} {}_{} {} {}_{};", instr, plhs.str(),
                            i * type_size, s, pop1.str(), i * type_size)
             << endl;
      add_lhs(parsed_object(plhs.str(), i * type_size));
      add_rhs(parsed_object(pop1.str(), i * type_size));
    }
  } else if (op1_code == VECTOR_CST) {
    pop0 = parse_expr_raw(op0);
    vector<string> v = parse_vector_cst(op1, get_vector_length(lhs));
    uint64_t type_size = get_type_size(lhs) / 8;
    for (unsigned int i = 0; i < v.size(); i++) {
      auto s = v[i];
      output << fmt::format("{} {}_{} {}_{} {};", instr, plhs.str(),
                            i * type_size, pop0.str(), i * type_size, s)
             << endl;
      add_lhs(parsed_object(plhs.str(), i * type_size));
      add_rhs(parsed_object(pop0.str(), i * type_size));
    }

  } else if (op0_code == SSA_NAME && op1_code == INTEGER_CST) {
    pop0 = parse_expr_raw(op0);
    output << fmt::format("{} {} {} {};", instr, plhs.str(), pop0.str(),
                          get_constant_str(op1, true))
           << endl;
    add_lhs(plhs);
    add_rhs(pop0);

  } else if (op0_code == INTEGER_CST && op1_code == SSA_NAME) {
    pop1 = parse_expr_raw(op1);
    output << fmt::format("{} {} {} {};", instr, plhs.str(),
                          get_constant_str(op0, true), pop1.str())
           << endl;
    add_lhs(plhs);
    add_rhs(pop1);
  } else {
    NOT_IMPLEMENT;
  }
  return output.str();
}
std::string pass_cryptoline::parse_conversion(tree lhs, tree op0) {
  using namespace std;
  stringstream output;
  DEBUG << "============= in the parse_conversion" << endl;
  assert(TREE_CODE(lhs) == SSA_NAME);
  int lhs_size = get_type_size(lhs);
  int op0_size = get_type_size(op0);
  DEBUG << lhs_size << " " << op0_size << endl;
  assert(lhs_size <= 128);
  assert(op0_size <= 128);
  parsed_object plhs, pop0, pop1;
  plhs = parse_expr_raw(lhs);
  pop0 = parse_expr_raw(op0);
  DEBUG << generate_cryptoline_type(lhs) << endl;
  DEBUG << generate_cryptoline_type(op0) << endl;
  bool use_vpc = false;
  /* if same signed flag*/
  if (get_signed_flag(lhs) == get_signed_flag(op0)) {
    if (lhs_size > op0_size) {
      use_vpc = true;
    }
  }
  output << fmt::format("{} {}@{} {}@{};", (use_vpc ? "vpc" : "cast"),
                        plhs.str(), generate_cryptoline_type(lhs), pop0.str(),
                        generate_cryptoline_type(op0))
         << endl;
  add_lhs(plhs);
  add_rhs(pop0);
  return output.str();
}
std::string pass_cryptoline::parse_negation(tree lhs, tree op0) {
  using namespace std;
  stringstream output;
  assert(TREE_CODE(lhs) == SSA_NAME);
  assert(TREE_CODE(op0) == SSA_NAME);
  parsed_object plhs, pop0;
  plhs = parse_expr_raw(lhs);
  pop0 = parse_expr_raw(op0);
  output << "/* TODO: check negation semantics */" << endl;
  if (!is_vector_type(op0)) {
    output << fmt::format("{}subb carry {} 0@{} {};", get_signed_flag(lhs),
                          plhs.str(), generate_cryptoline_type(lhs), pop0.str())
           << endl;
    add_lhs(plhs);
    add_rhs(pop0);
  } else {
    uint64_t vec_len = get_vector_length(lhs);
    uint64_t type_size = get_type_size(lhs) >> 3;
    for (uint64_t i = 0; i < vec_len; i++) {
      output << fmt::format("{}subb carry_{} {}_{} 0@{} {}_{};",
                            get_signed_flag(lhs), i, plhs.str(), i * type_size,
                            generate_cryptoline_type(lhs), pop0.str(),
                            i * type_size)
             << endl;
      add_lhs(parsed_object(plhs.str(), i * type_size));
      add_rhs(parsed_object(pop0.str(), i * type_size));
    }
  }
  return output.str();
}
std::string pass_cryptoline::parse_not(tree lhs, tree op0) {
  using namespace std;
  stringstream output;
  assert(TREE_CODE(lhs) == SSA_NAME);
  assert(TREE_CODE(op0) == SSA_NAME);
  parsed_object plhs, pop0;
  plhs = parse_expr_raw(lhs);
  pop0 = parse_expr_raw(op0);
  output << fmt::format("not {} {} {};", generate_cryptoline_type(lhs),
                        plhs.str(), pop0.str())
         << endl;

  add_lhs(plhs);
  add_rhs(pop0);
  return output.str();
}
std::string pass_cryptoline::parse_lshift(tree lhs, tree op0, tree op1) {
  using namespace std;
  stringstream output;
  assert(TREE_CODE(lhs) == SSA_NAME);
  if (TREE_CODE(op1) != INTEGER_CST) {
    output << fmt::format(
                  "/* TODO: skip, because shift amount is not constant */")
           << endl;
    return output.str();
  }
  int lhs_size = get_expr_size(lhs);
  parsed_object plhs, pop0, pop1;
  plhs = parse_expr_raw(lhs);
  int shift_value = get_integer_value(op1);
  pop0 = parse_expr_raw(op0);
  if (shift_value == 0) {
    output << fmt::format("mov {} {};", plhs.str(), pop0.str()) << endl;
  } else if (shift_value < lhs_size) {
    output << fmt::format("{}split tmp1 tmp2 {} {};", get_signed_flag(lhs),
                          pop0.str(), lhs_size - shift_value)
           << endl;
    output << fmt::format("shl {} tmp2 {};", plhs.str(), shift_value) << endl;
    output << "/* TODO: check tmp1 heuristic */" << endl;
    output << fmt::format("assert true && tmp1 = 0@{};", lhs_size) << endl;
    output << "assume tmp1 = 0 && true;" << endl;
  } else if (shift_value == lhs_size) {
    output << fmt::format("mov {} 0@{};", plhs.str(),
                          generate_cryptoline_type(lhs))
           << endl;
  } else {
    throw "shift value > lhs_size, which should not happend.";
  }
  add_lhs(plhs);
  add_rhs(pop0);

  return output.str();
}
std::string pass_cryptoline::parse_rshift(tree lhs, tree op0, tree op1) {
  using namespace std;
  stringstream output;
  assert(TREE_CODE(lhs) == SSA_NAME);
  assert(TREE_CODE(op0) == SSA_NAME);
  if (TREE_CODE(op1) != INTEGER_CST) {
    output << fmt::format(
                  "/* TODO: skip, because shift amount is not constant */")
           << endl;
    return output.str();
  }
  int lhs_size = get_expr_size(lhs);
  int shift_value = get_integer_value(op1);
  parsed_object plhs, pop0, pop1;
  plhs = parse_expr_raw(lhs);
  bool unsigned_lhs = is_expr_unsigned(lhs);
  if (!unsigned_lhs) {
    output << "/* TODO: signed operation, need check */" << endl;
  }
  pop0 = parse_expr_raw(op0);
  if (TREE_CODE(TREE_TYPE(lhs)) == VECTOR_TYPE) {
    uint64_t vec_len = get_vector_length(lhs);
    uint64_t type_size = get_type_size(lhs) >> 3;
    for (uint64_t i = 0; i < vec_len; i++) {
      string left = fmt::format("{}_{}", plhs.str(), i * type_size);
      string right = fmt::format("{}_{}", pop0.str(), i * type_size);
      if (shift_value == 0) {
        output << fmt::format("mov {} {};", left, right) << endl;

      } else if (shift_value < lhs_size) {
        output << fmt::format("{}split {} tmp_to_use_{} {} {};",
                              get_signed_flag(lhs), left, i, right, shift_value)
               << endl;

      } else if (shift_value == lhs_size) {
        if (unsigned_lhs) {
          output << fmt::format("mov {} 0@{};", left,
                                generate_cryptoline_type(lhs))
                 << endl;
        } else {
          output << "/* TODO: signed left shift, should be self traslated */"
                 << endl;
        }
      }
      add_lhs(left);
      add_rhs(right);
    }

  } else {
    if (shift_value == 0) {
      output << fmt::format("mov {} {};", plhs.str(), pop0.str()) << endl;

    } else if (shift_value < lhs_size) {
      output << fmt::format("{}split {} tmp_to_use {} {};",
                            get_signed_flag(lhs), plhs.str(), pop0.str(),
                            shift_value)
             << endl;

    } else if (shift_value == lhs_size) {
      if (unsigned_lhs) {
        output << fmt::format("mov {} 0@{};", plhs.str(),
                              generate_cryptoline_type(lhs))
               << endl;
      } else {
        output << "/* TODO: signed left shift, should be self traslated */"
               << endl;
      }
    }
    add_lhs(plhs);
    add_rhs(pop0);
  }
  return output.str();
}
string pass_cryptoline::parse_and(tree lhs, tree op0, tree op1) {
  using namespace std;
  stringstream output;
  assert(TREE_CODE(lhs) == SSA_NAME);
  assert(TREE_CODE(op0) == SSA_NAME);
  parsed_object plhs, pop0, pop1;
  plhs = parse_expr_raw(lhs);
  pop0 = parse_expr_raw(op0);
  int lhs_size = get_expr_size(lhs);
  output << fmt::format("/* TODO: Bitwise And , may need assert and assume */")
         << endl;
  if (!is_expr_unsigned(lhs)) {
    output << "/* TODO: signed operation, need check semantics */" << endl;
  }
  if (TREE_CODE(op1) == INTEGER_CST) {
    DEBUG << get_expr_size(op1) << " " << (int)TREE_INT_CST_NUNITS(op1) << endl;
    stringstream tmp;
    tmp << fmt::format("and {} {} {} {};", generate_cryptoline_type(lhs),
                       plhs.str(), pop0.str(), get_constant_str(op1, true))
        << endl;
    output << tmp.str();
    add_lhs(plhs);
    add_rhs(pop0);
  } else if (TREE_CODE(op1) == SSA_NAME) {
    pop1 = parse_expr_raw(op1);
    if (!is_vector_type(op1)) {
      output << fmt::format("and {} {} {} {};", generate_cryptoline_type(lhs),
                            plhs.str(), pop0.str(), pop1.str())
             << endl;
      add_lhs(plhs);
      add_rhs(pop0);
      add_rhs(pop1);
    } else {
      uint64_t vec_len = get_vector_length(lhs);
      for (uint64_t i = 0; i < vec_len; i++) {
        output << fmt::format("and {} {}_{} {}_{} {}_{};",
                              generate_cryptoline_type(lhs), plhs.str(), i,
                              pop0.str(), i, pop1.str(), i)
               << endl;
        add_lhs(fmt::format("{}_{}", plhs.str(), i));
        add_rhs(fmt::format("{}_{}", pop0.str(), i));
        add_rhs(fmt::format("{}_{}", pop1.str(), i));
      }
    }
  }
  return output.str();
}
string pass_cryptoline::parse_or(tree lhs, tree op0, tree op1) {
  using namespace std;
  stringstream output;
  assert(TREE_CODE(lhs) == SSA_NAME);
  assert(TREE_CODE(op0) == SSA_NAME);
  parsed_object plhs, pop0, pop1;
  plhs = parse_expr_raw(lhs);
  pop0 = parse_expr_raw(op0);
  int lhs_size = get_expr_size(lhs);
  output << fmt::format("/* Bitwise or , may need assert and assume */")
         << endl;
  if (!is_expr_unsigned(lhs)) {
    output << "/* TODO: signed operation, need check semantics */" << endl;
  }
  if (TREE_CODE(op1) == INTEGER_CST) {
    DEBUG << get_expr_size(op1) << " " << (int)TREE_INT_CST_NUNITS(op1) << endl;
    output << fmt::format(

                  "or {} {} {} {};", generate_cryptoline_type(lhs), plhs.str(),
                  pop0.str(), get_constant_str(op1, true))
           << endl;
    add_lhs(plhs);
    add_rhs(pop0);
  } else if (TREE_CODE(op1) == SSA_NAME) {
    pop1 = parse_expr_raw(op1);
    if (!is_vector_type(op1)) {
      output << fmt::format("or {} {} {} {};", generate_cryptoline_type(lhs),
                            plhs.str(), pop0.str(), pop1.str())
             << endl;
      add_lhs(plhs);
      add_rhs(pop0);
      add_rhs(pop1);
    } else {
      uint64_t vec_len = get_vector_length(lhs);
      for (uint64_t i = 0; i < vec_len; i++) {
        output << fmt::format("or {} {}_{} {}_{} {}_{};",
                              generate_cryptoline_type(lhs), plhs.str(), i,
                              pop0.str(), i, pop1.str(), i)
               << endl;
        add_lhs(fmt::format("{}_{}", plhs.str(), i));
        add_rhs(fmt::format("{}_{}", pop0.str(), i));
        add_rhs(fmt::format("{}_{}", pop1.str(), i));
      }
    }
  }
  return output.str();
}
string pass_cryptoline::parse_lt_or_le(tree lhs, tree op0, tree op1,
                                       bool equal = false) {
  stringstream output;
  assert(TREE_CODE(lhs) == SSA_NAME);
  assert(TREE_CODE(op0) == SSA_NAME);
  parsed_object plhs, pop0, pop1;
  plhs = parse_expr_raw(lhs);
  pop0 = parse_expr_raw(op0);
  int lhs_size = get_expr_size(lhs);
  int op0_size = get_expr_size(op0);
  if (TREE_CODE(op1) == SSA_NAME) {
    pop1 = parse_expr_raw(op1);

    string name = pop1.str();
    if (equal) {
      output << fmt::format("add tmp_for_compare  {} 1@{};", name,
                            generate_cryptoline_type(op0))
             << endl;
      name = "tmp_for_compare";
    }
    output << fmt::format("subb {} dontcare {} {};", plhs.str(), pop0.str(),
                          name)
           << endl;
  } else if (TREE_CODE(op1) == INTEGER_CST) {
    string name = get_constant_str(op1, true);
    if (equal) {
      output << fmt::format("add tmp_for_compare value 1@{};", name,
                            generate_cryptoline_type(op0))
             << endl;
      name = "tmp_for_compare";
    }

    output << fmt::format("subb {} dontcare {} {};", plhs.str(), pop0.str(),
                          name)
           << endl;
  }

  output << fmt::format("vpc {} {}@uint1;", plhs.str_with_type(), plhs.str())
         << endl;
  add_lhs(plhs);
  add_rhs(pop0);
  if (TREE_CODE(op1) == SSA_NAME) {
    add_rhs(pop1);
  }
  return output.str();
}
string pass_cryptoline::parse_gt_or_ge(tree lhs, tree op0, tree op1,
                                       bool equal = false) {
  stringstream output;
  assert(TREE_CODE(lhs) == SSA_NAME);
  assert(TREE_CODE(op0) == SSA_NAME);
  parsed_object plhs, pop0, pop1;
  plhs = parse_expr_raw(lhs);
  pop0 = parse_expr_raw(op0);
  int lhs_size = get_expr_size(lhs);
  int op0_size = get_expr_size(op0);
  if (TREE_CODE(op1) == SSA_NAME) {
    pop1 = parse_expr_raw(op1);

    string name = pop0.str();
    if (equal) {
      output << fmt::format("add tmp_for_compare  {} 1@{};", name,
                            generate_cryptoline_type(op0))
             << endl;
      name = "tmp_for_compare";
    }
    output << fmt::format("subb {} dontcare {} {};", plhs.str(), pop1.str(),
                          name)
           << endl;
  } else if (TREE_CODE(op1) == INTEGER_CST) {
    string name = get_constant_str(op1, true);
    if (equal) {
      output << fmt::format("add tmp_for_compare  {} 1@{};", name,
                            generate_cryptoline_type(op0))
             << endl;
      name = "tmp_for_compare";
    }

    output << fmt::format("subb {} dontcare {} {};", plhs.str(), pop1.str(),
                          name)
           << endl;
  }
  output << fmt::format("vpc {} {}@uint1;", plhs.str_with_type(), plhs.str())
         << endl;
  add_lhs(plhs);
  add_rhs(pop0);
  if (TREE_CODE(op1) == SSA_NAME) {
    add_rhs(pop1);
  }
  return output.str();
}

string pass_cryptoline::parse_eq(tree lhs, tree op0, tree op1, bool inverse) {
  stringstream output;
  assert(TREE_CODE(lhs) == SSA_NAME);
  assert(TREE_CODE(op0) == SSA_NAME);
  parsed_object plhs, pop0, pop1;
  plhs = parse_expr_raw(lhs);
  pop0 = parse_expr_raw(op0);
  int lhs_size = get_expr_size(lhs);
  int op0_size = get_expr_size(op0);
  if (TREE_CODE(op1) == SSA_NAME) {
    pop1 = parse_expr_raw(op1);

    output << fmt::format("subb lt_value dontcare {} {};", plhs.str(),
                          pop0.str(), pop1.str())
           << endl;

    output << fmt::format("subb gt_value dontcare {} {};", pop1.str(),
                          pop0.str())
           << endl;
    output << fmt::format("or uint1 {} lt_value gt_value;", plhs.str()) << endl;
  } else if (TREE_CODE(op1) == INTEGER_CST) {
    string name = get_constant_str(op1, true);
    bool skip_lt = is_integer_zero(op1) && is_expr_unsigned(lhs);
    if(!skip_lt){
    output << fmt::format("subb lt_value dontcare {} {};", pop0.str(), name)
           << endl;
    }
    output << fmt::format("subb gt_value dontcare {} {};", name,
                          pop0.str())
           << endl;

    if(!skip_lt){
      output << fmt::format("or uint1 {} lt_value gt_value;", plhs.str()) << endl;
    }else {
      output << fmt::format("mov {} gt_value;", plhs.str()) << endl;
    }
  } else {
    throw "Not implemented";
  }
  /* inverse:true -> not equal */
  if (!inverse) {
    output << fmt::format("not uint1 {} {};", plhs.str(), plhs.str()) << endl;
  }
  output << fmt::format("vpc {} {}@uint1;", plhs.str_with_type(), plhs.str())
         << endl;
  add_lhs(plhs);
  add_rhs(pop0);
  if (TREE_CODE(op1) == SSA_NAME) {
    add_rhs(pop1);
  }
  return output.str();
}
string pass_cryptoline::parse_vec_unpack(tree lhs, tree op0, bool is_lo) {
  stringstream output;
  assert(TREE_CODE(TREE_TYPE(lhs)) == VECTOR_TYPE);
  assert(TREE_CODE(TREE_TYPE(op0)) == VECTOR_TYPE);
  uint64_t length_lhs = get_vector_length(lhs);
  uint64_t length_op0 = get_vector_length(op0);
  uint64_t type_size = get_type_size(lhs) / 8;
  if (length_lhs * 2 > length_op0) {
    throw "unpack length inconsisten => lhs length * 2 > rhs length ";
  }
  if (TREE_CODE(lhs) != SSA_NAME || TREE_CODE(op0) != SSA_NAME) {
    throw "unpack only hande SSA_NAME";
  }
  uint64_t half_length = length_op0 >> 1;
  int start = (is_lo) ? 0 : half_length;
  parsed_object plhs = parse_expr_raw(lhs);
  parsed_object pop0 = parse_expr_raw(op0);

  for (uint64_t i = 0; i < half_length; i++) {
    string left = fmt::format("{}_{}", plhs.str(), i * type_size);
    string right = fmt::format("{}_{}", pop0.str(), (start + i) * type_size);
    output << fmt::format("mov {} {};", left, right) << endl;
    add_lhs(parsed_object(plhs.str(), i * type_size));
    add_rhs(parsed_object(pop0.str(), (start + i) * type_size));
  }
  return output.str();
}
string pass_cryptoline::parse_vec_widen_mult_unpack(tree lhs, tree op0,
                                                    tree op1, bool is_lo) {
  stringstream output;
  uint64_t length_lhs, length_op0, length_op1;
  length_lhs = get_vector_length(lhs);
  length_op0 = get_vector_length(op0);
  length_op1 = get_vector_length(op1);
  uint64_t type_size_l = get_type_size(lhs) / 8;
  uint64_t type_size_op0 = get_type_size(op0) / 8;
  if (length_lhs * 2 > length_op0) {
    throw "unpack length inconsisten => lhs length * 2 > rhs length ";
  }
  if (TREE_CODE(lhs) != SSA_NAME || TREE_CODE(op0) != SSA_NAME) {
    throw "unpack only hande SSA_NAME";
  }
  uint64_t half_length = length_op0 >> 1;
  int start = (is_lo) ? 0 : half_length;
  parsed_object plhs = parse_expr_raw(lhs);
  parsed_object pop0 = parse_expr_raw(op0);
  parsed_object pop1 = parse_expr_raw(op1);

  for (uint64_t i = 0; i < half_length; i++) {
    string left = fmt::format("{}_{}", plhs.str(), i * type_size_l);
    string right1 =
        fmt::format("{}_{}", pop0.str(), (start + i) * type_size_op0);
    string right2 =
        fmt::format("{}_{}", pop1.str(), (start + i) * type_size_op0);
    output << fmt::format("mulj {} {} {};", left, right1, right2) << endl;
    add_lhs(parsed_object(plhs.str(), i * type_size_l));
    add_rhs(parsed_object(pop0.str(), (start + i) * type_size_op0));
    add_rhs(parsed_object(pop1.str(), (start + i) * type_size_op0));
  }
  return output.str();
}
/* Vector permutation expression.  A = VEC_PERM_EXPR<v0, v1, mask> means

...N = length(mask)
...foreach i in N:
....¦M = mask[i] % (2*N)
....¦A = M < N ? v0[M] : v1[M-N]

...V0 and V1 are vectors of the same type.  MASK is an integer-typed
...vector.  The number of MASK elements must be the same with the
...number of elements in V0 and V1.  The size of the inner type
...of the MASK and of the V0 and V1 must be the same.
*/
string pass_cryptoline::parse_vec_perm(tree lhs, tree op0, tree op1, tree op2) {
  stringstream output;
  vector<uint64_t> mask = parse_vector_cst_uint(op2, get_vector_length(op2));
  parsed_object plhs, pop0, pop1, pp;
  plhs = parse_expr_raw(lhs);
  pop0 = parse_expr_raw(op0);
  pop1 = parse_expr_raw(op1);
  uint64_t type_size = get_type_size(lhs) / 8;
  for (unsigned int i = 0; i < mask.size(); i++) {
    uint64_t M = mask[i] % (2 * mask.size());
    string rhs_name;
    if (M < mask.size()) {
      pp = get_vector_element(op0, M);
      output << fmt::format("mov {}_{} {};", plhs.str(), i * type_size,
                            pp.str())
             << endl;
      add_lhs(parsed_object(plhs.str(), i * type_size));
      if (TREE_CODE(op0) == SSA_NAME) {
        add_rhs(pp);
      }
    } else {
      pp = get_vector_element(op1, M - mask.size());
      output << fmt::format("mov {}_{} {};", plhs.str(), i * type_size,
                            pp.str())
             << endl;
      add_lhs(parsed_object(plhs.str(), i * type_size));
      add_lhs(plhs.str() + "_" + to_string(i * type_size));
      if (TREE_CODE(op1) == SSA_NAME) {
        add_rhs(pp);
      }
    }
  }
  return output.str();
}

string pass_cryptoline::parse_expr(tree expr) {
  using namespace std;
  stringstream output;
  parsed_object po;
  switch (TREE_CODE(expr)) {
  case SSA_NAME: {
    DEBUG << "It's SSA" << endl;
    po = parse_expr_raw(expr);

    break;
  }
  case MEM_REF: {
    DEBUG << "parse expr MEM_REF" << endl;
    po = parse_expr_raw(expr);
    break;
  }
  case INTEGER_CST: {
    po = parse_expr_raw(expr);
    break;
  }
  default: { assert(false && "Parse Operand not handled"); }
  }
  output << po.str() + '@' + generate_cryptoline_type(expr);
  return output.str();
}

pass_cryptoline::parsed_object pass_cryptoline::parse_expr_raw(tree expr) {
  using namespace std;
  DEBUG << "Enter parse_expr_raw" << endl;
  parsed_object ret;
  switch (TREE_CODE(expr)) {
  case SSA_NAME: {
    string key = get_tracker_key(expr);
    if (pointer_tracker.find(key) == pointer_tracker.end()) {
      ret.name = get_tracker_key(expr);
    } else {
      pointer_track &pt = pointer_tracker[key];
      ret.name = fmt::format("{}", pt.original_key);
      ret.offset = pt.total_offset;
    }
    ret.type_name = generate_cryptoline_type(expr);
    break;
  }
  case MEM_REF: {
    DEBUG << "parse expr MEM_REF" << endl;
    tree op0, op1;
    op0 = TREE_OPERAND(expr, 0);
    op1 = TREE_OPERAND(expr, 1);
    if (TREE_CODE(op0) == SSA_NAME) {
      assert(TREE_CODE(op1) == INTEGER_CST &&
             "op1 is offset,must be INTEGER_CST");
      string key = get_tracker_key(op0);
      int offset = get_integer_value(op1);
      if (pointer_tracker.find(key) == pointer_tracker.end()) {
        pointer_track &pt = pointer_tracker[key];
        pt.original_key = key;
        pt.total_offset = 0;
        ret.name = key;
        ret.offset = offset;
      } else {
        pointer_track &pt = pointer_tracker[key];
        ret.name = pt.original_key;
        ret.offset = pt.total_offset + offset;
      }
    } else if (TREE_CODE(op0) == ADDR_EXPR) {
      ret.name = get_expr_name(op0);
      ret.offset = get_integer_value(op1);
    } else {
      NOT_IMPLEMENT;
    }
    ret.type_name = generate_cryptoline_type(expr);
    break;
  }
  case ADDR_EXPR: {
    DEBUG << get_tree_code_name(TREE_CODE(expr));
    DEBUG << get_tree_code_name(TREE_CODE(TREE_OPERAND(expr, 0)));
    DEBUG << parse_expr_raw(TREE_OPERAND(expr, 0)).str() << endl;
    ret.name = parse_expr_raw(TREE_OPERAND(expr, 0)).str();
    ret.offset = -1;
    break;
  }
  case INTEGER_CST: {
    DEBUG << "integer value is " << get_integer_value(expr) << endl;
    ret.name = to_string(get_integer_value(expr));
    break;
  }
  case VECTOR_CST: {
    ret.name = "";
    ret.type_name = generate_cryptoline_type(expr);
    break;
  }
  case ARRAY_REF: {
    int ele_size = get_type_size(expr);
    int array_lower_bound = get_integer_value(array_ref_low_bound(expr));
    // assert(ele_size <= 64);
    DEBUG << "arary element size is " << ele_size << "array lower bound is "
          << array_lower_bound << endl;
    tree op0, op1;
    op0 = TREE_OPERAND(expr, 0);
    op1 = TREE_OPERAND(expr, 1);
    string array_name;
    uint64_t offset = 0;
    parsed_object pop0 = parse_expr_raw(op0);
    array_name = pop0.name;
    offset = pop0.offset;
    DEBUG << array_name << endl;
    DEBUG << parse_expr_raw(op1).str() << endl;
    if (TREE_CODE(op1) == INTEGER_CST) {
      int index = get_integer_value(op1);
      ret.name = array_name;
      ret.offset = offset + ele_size / 8 * index;

    } else {
      NOT_IMPLEMENT;
    }
    ret.type_name = generate_cryptoline_type(expr);
    break;
  }
  case COMPONENT_REF: {
    DEBUG << "COMPONENT_REF" << endl;
    string result = "";
    tree op0, op1;
    op0 = TREE_OPERAND(expr, 0);
    op1 = TREE_OPERAND(expr, 1);
    uint64_t offset = get_component_field_offset(expr);
    if (TREE_CODE(op0) == MEM_REF) {
      parsed_object pop0 = parse_expr_raw(op0);
      ret.name = pop0.name;
      offset += pop0.offset;
    } else if (TREE_CODE(op0) == VAR_DECL) {
      parsed_object pop0 = parse_expr_raw(op0);
      ret.name = pop0.name;
      offset += pop0.offset;
    } else {
      DEBUG << "TREE_CODE is " << get_tree_code_name(TREE_CODE(op0)) << endl;
      throw "no heuristic, need self translating";
    }
    ret.offset = offset;
    ret.type_name = generate_cryptoline_type(expr);
    break;
  }
  case VAR_DECL: {
    ret.name = get_name(expr);
    ret.offset = 0;
    break;
  }

  default: {
    DEBUG << "TREE_CODE is " << get_tree_code_name(TREE_CODE(expr)) << endl;
    assert(false && "Parse Operand not handled");
  }
  }
  DEBUG << "Exit parse_expr_raw"
        << " " << ret.type_name << endl;
  return ret;
}
std::string pass_cryptoline::get_expr_name(tree expr) {
  using namespace std;
  string result = "";
  if (TREE_CODE(expr) == SSA_NAME) {
    result =
        fmt::format("{}{}", get_ssa_name_str(expr), SSA_NAME_VERSION(expr));
  } else if (TREE_CODE(expr) == ADDR_EXPR) {
    result = get_name(expr);
  } else if (TREE_CODE(expr) == COMPONENT_REF) {
    tree op0;
    op0 = TREE_OPERAND(expr, 0);
    uint64_t offset = get_component_field_offset(expr);
    if (TREE_CODE(op0) == MEM_REF || TREE_CODE(op0) == VAR_DECL) {
      parsed_object pop0 = parse_expr_raw(op0);
      result = fmt::format("{}_{}", pop0.name, pop0.offset + offset);

    } else {
      NOT_IMPLEMENT;
    }

  } else if (TREE_CODE(expr) == VAR_DECL) {
    result = get_name(expr);

  } else if (TREE_CODE(expr) == FIELD_DECL) {
    result = get_name(expr);
  } else {
    NOT_IMPLEMENT;
  }
  return result;
}
pass_cryptoline::parsed_object
pass_cryptoline::get_vector_element(tree expr, uint64_t index) {
  string ret = "";
  assert(is_vector_type(expr));
  parsed_object pex = parse_expr_raw(expr);
  if (TREE_CODE(expr) == SSA_NAME) {
    return parsed_object(pex.str(), index * get_type_size(expr) / 8);
  } else if (TREE_CODE(expr) == VECTOR_CST) {
    tree elt = VECTOR_CST_ELT(expr, index);
    return parsed_object(fmt::format("{}", get_integer_value(elt)), -1,
                         pex.type_name);
  }
  return ret;
}
string pass_cryptoline::generate_ADD_OVERFLOW(gimple *stmt) {
  tree lhs = gimple_call_lhs(stmt);
  tree op0 = gimple_call_arg(stmt, 0);
  tree op1 = gimple_call_arg(stmt, 1);
  stringstream output;
  assert(TREE_CODE(lhs) == SSA_NAME);
  assert(TREE_CODE(op0) == SSA_NAME);
  assert(TREE_CODE(op1) == SSA_NAME);
  uint64_t lhs_size = get_expr_size(lhs);
  uint64_t op0_size = get_expr_size(op0);
  assert(lhs_size == op0_size * 2);
  parsed_object plhs = parse_expr_raw(lhs);
  parsed_object pop0 = parse_expr_raw(op0);
  parsed_object pop1 = parse_expr_raw(op1);
  output << fmt::format("adds carry {}_REAL {} {};", plhs.str(), pop0.str(),
                        pop1.str())
         << endl;
  output << fmt::format("adc {}_IMAGE 0@{} 0@{} carry;", plhs.str(),
                        generate_cryptoline_type(op0),
                        generate_cryptoline_type(op0), plhs.str())
         << endl;
  add_lhs(plhs.str() + "_REAL");
  add_lhs(plhs.str() + "_IMAGE");
  add_rhs(pop0);
  add_rhs(pop1);
  return output.str();
}
string pass_cryptoline::generate_builtin_ia32_psrldi256(gimple *stmt) {
  // TODO: signed or unsigned ??  extend zero in asm
  stringstream output;
  tree lhs = gimple_call_lhs(stmt);
  tree op0 = gimple_call_arg(stmt, 0);
  tree op1 = gimple_call_arg(stmt, 1);
  for (auto &v : {lhs, op0, op1}) {
    DEBUG << get_tree_name(v) << endl;
  }

  assert(is_vector_type(lhs));
  assert(is_vector_type(op0));
  assert(TREE_CODE(op1) == INTEGER_CST);
  uint64_t shift_amount = get_integer_value(op1);
  parsed_object plhs, pop0;
  plhs = parse_expr_raw(lhs);
  pop0 = parse_expr_raw(op0);
  DEBUG << "shift amount is " << shift_amount << endl;
  uint64_t vec_len = get_vector_length(op0);
  for (unsigned int i = 0; i < vec_len; i++) {
    uint64_t step = get_type_size(lhs) / 8;
    output << fmt::format("{}split {} tmp_to_use_{} {} {};",
                          get_signed_flag(lhs), (plhs + step * i).str(), i,
                          (pop0 + i * step).str(), shift_amount)
           << endl;
    add_lhs(plhs + step * i);
    add_rhs(pop0 + i * step);
  }
  return output.str();
}
} // namespace GCC2Cryptoline
static void finish_callback(void *gcc_data, void *user_data) {
  using namespace std;
  if (!found) {
    cerr << style::bold << fg::red
         << "Target function not found! Check compile flags!" << endl
         << style::reset << fg::reset;
    exit(1);
  }
}

int plugin_init(plugin_name_args *plugin_info, plugin_gcc_version *version) {
  using namespace std;
  DDEBUG << "Plugin compiled with gcc version " << version->basever << endl;
  if (!plugin_default_version_check(version, &gcc_version)) {
    cerr << style::bold << fg::red;
    cerr << "Your gcc version is not compatible with this plugin." << endl;
    cerr << style::reset << fg::reset;
    return 1;
  }
  int argc = plugin_info->argc;
  struct plugin_argument *argv = plugin_info->argv;
  for (int i = 0; i < argc; i++) {
    // cout << argv[i].key << endl;
    if (!strcmp(argv[i].key, "debug")) {
      is_debug = true;
      DDEBUG.rdbuf(std::cout.rdbuf());
    } else if (!strcmp(argv[i].key, "func")) {
      // cout << argv[i].value << endl;
      target_func_name = argv[i].value;
    } else if (!strcmp(argv[i].key, "dump")) {
      dump = true;
    } else if (!strcmp(argv[i].key, "32bit")) {
      WORD_SIZE = 32;
    } else if (!strcmp(argv[i].key, "heuristic")) {
      USE_HEURISTIC = true;
    }
  }
  if (target_func_name == nullptr) {
    cerr << style::bold << fg::red;
    cerr << "No define function name to translate." << endl;
    cerr << style::reset << fg::reset;
    exit(1);
  }
  if (dump) {
    char file_name[100] = {};
    strcpy(file_name, target_func_name);
    strcat(file_name, ".cl");
    freopen(file_name, "w", stdout);
  }
  DEBUG << "Plugin Start" << endl;
  register_callback(plugin_info->base_name,
                    /* event */ PLUGIN_INFO,
                    /* callback */ NULL, /* user_data */ &my_gcc_plugin_info);
  register_pass_info pass_info;
  pass_info.pass = new GCC2Cryptoline::pass_cryptoline(g);
  pass_info.reference_pass_name = "optimized";
  pass_info.ref_pass_instance_number = 1;
  pass_info.pos_op = PASS_POS_INSERT_AFTER;
  register_callback(plugin_info->base_name, PLUGIN_PASS_MANAGER_SETUP, NULL,
                    &pass_info);
  register_callback("finish", PLUGIN_FINISH, &finish_callback, NULL);

  return 0;
}
