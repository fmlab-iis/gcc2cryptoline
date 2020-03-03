#include "gimple_helper.hpp"

void print_gimple_stmt_custom(FILE* file, gimple* g, int spc, dump_flags_t flags)
{
    std::cout << "/* ";
    pretty_printer buffer;
    buffer.buffer->stream = file;
    pp_gimple_stmt_1(&buffer, g, spc, flags);

    pp_flush(&buffer);
    std::cout << " */" << std::endl;
}

string get_basic_block_name(basic_block bb)
{
    string name = "";
    gimple* stmt = first_stmt(bb);
    if (stmt && gimple_code(stmt) == GIMPLE_LABEL) {
        tree label = gimple_label_label(as_a<glabel*>(stmt));
        name = fmt::format("<label {}", LABEL_DECL_UID(label));
    } else {
        // When there is no label, use the same name scheme as the GCC tree dumps.
        name = "<bb " + std::to_string(bb->index) + ">";
    }
    return name;
}

bool is_expr_unsigned(tree expr)
{
    expr = get_type(expr);
    return TYPE_UNSIGNED(expr);
}

bool is_expr_signed(tree expr)
{
    return !is_expr_unsigned(expr);
}

std::string get_signed_flag(tree expr, bool fortype)
{
    if (is_expr_unsigned(expr)) {
        return "u";
    } else {
        if (fortype) {
            return "";
        } else {
            return "s";
        }
    }
}
uint64_t get_integer_value(tree expr)
{
    /*
     *  for 128bit value use get_integer_value_high and get_interger_value_low
     *  */
    assert(TREE_CODE(expr) == INTEGER_CST && "Call get_integer_value without a integer type");
    assert(TREE_INT_CST_NUNITS(expr) < 2);
    return expr->int_cst.val[0];
}
uint64_t get_integer_value_high(tree expr)
{
    assert(TREE_CODE(expr) == INTEGER_CST && "Call get_integer_value without a integer type");
    if (TREE_INT_CST_NUNITS(expr) == 2) {
        return TREE_INT_CST_ELT(expr, 1);
    }
    return 0;
}
uint64_t get_integer_value_low(tree expr)
{
    assert(TREE_CODE(expr) == INTEGER_CST && "Call get_integer_value without a integer type");
    return TREE_INT_CST_ELT(expr, 0);
}
std::string get_ssa_name_str(tree expr)
{
    assert(TREE_CODE(expr) == SSA_NAME && "Call get_ssa_name_str without a ssa_name type");
    if (!SSA_NAME_VAR(expr)) {
        return "v";
    }
    return std::string(get_name(SSA_NAME_VAR(expr)));
}
uint64_t get_component_field_offset(tree expr)
{
    assert(TREE_CODE(expr) == COMPONENT_REF);
    /* thanks to dragonegg source code */
    tree FieldDecl = TREE_OPERAND(expr, 1);
    tree bit = DECL_FIELD_BIT_OFFSET(FieldDecl);
    assert(get_integer_value(bit) % 8 == 0);
    return get_integer_value(component_ref_field_offset(expr)) + get_integer_value(bit) / 8;
}

string get_component_field_name(tree expr)
{
    assert(TREE_CODE(expr) == COMPONENT_REF);
    return get_name(TREE_OPERAND(expr, 1));
}

string get_tree_name(tree expr)
{
    stringstream ret;
    ret << get_tree_code_name(TREE_CODE(expr));
    return ret.str();
}

int get_integer_size(tree expr)
{
    assert(TREE_CODE(expr) == INTEGER_CST && "Call get_integer_size without a integer type");
    tree size_node = TYPE_SIZE(expr->int_cst.typed.type);
    int size = size_node->int_cst.val[0];
    return size;
}

tree get_type(tree expr)
{
    if (TYPE_P(expr)) {
        switch (TREE_CODE(expr)) {
        case FIELD_DECL:
        case ARRAY_TYPE:
        case VECTOR_TYPE: {
            return get_type(TREE_TYPE(expr));
        }
        case RECORD_TYPE: {
            return get_type(TYPE_FIELDS(expr));
        }
        case POINTER_TYPE:
        case BOOLEAN_TYPE:
        case COMPLEX_TYPE:
        case INTEGER_TYPE: {
            return expr;
        }
        default: {
            DEBUG << get_tree_name(expr) << endl;
            NOT_IMPLEMENT;
            return nullptr;
        }
        }
    } else {
        return get_type(TREE_TYPE(expr));
    }
}

/*
 * return primitive type size
 * array / vector will return its element type size
 */
int get_type_size(tree expr)
{
    DEBUG << "get_type_size" << endl;
    return get_integer_value(TYPE_SIZE(get_type(expr)));
}

int get_ssa_name_size(tree expr)
{
    assert(TREE_CODE(expr) == SSA_NAME);
    tree size_node = TYPE_SIZE(expr->ssa_name.typed.type);
    int size = size_node->int_cst.val[0];
    return size;
}

int get_mem_ref_size(tree expr)
{
    assert(TREE_CODE(expr) == MEM_REF || TREE_CODE(expr) == ADDR_EXPR);
    tree size_node = TYPE_SIZE(expr->ssa_name.typed.type);
    int size = size_node->int_cst.val[0];
    return size;
}
int get_expr_size(tree expr)
{
    DEBUG << "get size" << endl;
    int size = -1;
    switch (TREE_CODE(expr)) {
    case SSA_NAME: {
        size = get_ssa_name_size(expr);
        break;
    }
    case INTEGER_CST: {
        size = get_integer_size(expr);
        break;
    }
    case MEM_REF: {
        size = get_mem_ref_size(expr);
        break;
    }
    case COMPONENT_REF: {
        tree op0, op1;
        op0 = TREE_OPERAND(expr, 0);
        op1 = TREE_OPERAND(expr, 1);
        size = get_expr_size(op1);
        break;
    }
    case ADDR_EXPR: {
        size = get_mem_ref_size(expr);
        break;
    }
    case ARRAY_REF: {
        size = get_integer_size(array_ref_element_size(expr));

        break;
    }
    case VAR_DECL: {
        size = 0;
        break;
    }
    case FIELD_DECL: {
        tree size_node = TYPE_SIZE(TREE_TYPE(expr));
        size = size_node->int_cst.val[0];
        break;
    }
    case VECTOR_CST: {
        size = get_integer_value(TYPE_SIZE(TREE_TYPE(expr)));
        break;
    }

    default: {
        DEBUG << get_tree_code_name(TREE_CODE(expr)) << std::endl;
        NOT_IMPLEMENT;
        break;
    }
    };
    return size;
}

uint64_t get_vector_length(tree expr)
{
    assert(TREE_CODE(TREE_TYPE(expr)) == VECTOR_TYPE);
    poly_uint64 full_nelts = TYPE_VECTOR_SUBPARTS(TREE_TYPE(expr));
    uint64_t num_elts = full_nelts.to_constant();
    return num_elts;
}

bool is_vector_type(tree expr)
{
    return TREE_CODE(TREE_TYPE(expr)) == VECTOR_TYPE;
}

string generate_cryptoline_type(tree type)
{
    DEBUG << "Enter generate_cryptoline_type with tree name "
          << get_tree_name(type) << endl;
    if (!TYPE_P(type)) {
        type = get_type(type);
    }
    switch (TREE_CODE(type)) {
    case POINTER_TYPE:
    case BOOLEAN_TYPE:
    case COMPLEX_TYPE:
    case INTEGER_TYPE: {
        int size = get_type_size(type);
        return fmt::format("{}int{}",
                           get_signed_flag(type, true),
                           size);
    }
    default: {
        DEBUG << "Not handled tree name"
              << " " << get_tree_name(type) << endl;
        NOT_IMPLEMENT;
    }
    }
    return "";
}

string get_constant_str(tree expr, bool append_type, bool signed_to_unsigned)
{
    assert(TREE_CODE(get_type(expr)) == INTEGER_TYPE);
    string type = generate_cryptoline_type(expr);
    uint64_t value = get_integer_value_low(expr);
    string result = "";
    uint64_t value_uint64 = (uint64_t)value;
    uint32_t value_uint32 = (uint32_t)value;
    uint16_t value_uint16 = (uint16_t)value;
    uint8_t value_uint8 = (uint8_t)value;
    int64_t value_int64 = (int64_t)value;
    int32_t value_int32 = (int32_t)value;
    int16_t value_int16 = (int16_t)value;
    int8_t value_int8 = (int8_t)value;
    __uint128_t value_uint128 = 0;
    __int128_t value_int128 = 0;
    if (get_integer_size(expr) == 128) {
        value_uint128 = get_integer_value_high(expr);
        value_uint128 <<= 64;
        value_uint128 += value;
        value_int128 = value_uint128;
    }

    if (signed_to_unsigned) {
        if (type == "int128") {
            type = "uint128";
        } else if (type == "int64") {
            type = "uint64";
        } else if (type == "int32") {
            type = "uint32";
        } else if (type == "int16") {
            type = "uint16";
        } else if (type == "int8") {
            type = "uint8";
        }
    }
    string format = "{:#x}";
    if (type == "uint128") {
        result = fmt::format("{}", value_uint128);
    } else if (type == "uint64") {
        result = fmt::format(format, value_uint64);
    } else if (type == "uint32") {
        result = fmt::format(format, value_uint32);
    } else if (type == "uint16") {
        result = fmt::format(format, value_uint16);
    } else if (type == "uint8") {
        result = fmt::format(format, value_uint8);
    } else if (type == "int128") {
        result = fmt::format("{}", value_int128);
        if (value_int128 < 0) {
            result = '(' + result + ')';
        }
    } else if (type == "int64") {
        result = fmt::format(format, value_int64);
        if (value_int64 < 0) {
            result = '(' + result + ')';
        }
    } else if (type == "int32") {
        result = fmt::format(format, value_int32);
        if (value_int32 < 0) {
            result = '(' + result + ')';
        }
    } else if (type == "int16") {
        result = fmt::format(format, value_int16);
        if (value_int16 < 0) {
            result = '(' + result + ')';
        }
    } else if (type == "int8") {
        result = fmt::format(format, value_int8);
        if (value_int8 < 0) {
            result = '(' + result + ')';
        }
    } else {
        DEBUG << type << endl;
        NOT_IMPLEMENT;
    }
    if (!append_type)
        return result;
    return result + '@' + type;
}

bool is_integer_zero(tree expr)
{
    assert(TREE_CODE(get_type(expr)) == INTEGER_TYPE);
    string type = generate_cryptoline_type(expr);
    uint64_t value = get_integer_value_low(expr);
    __uint128_t value_uint128 = 0;
    __int128_t value_int128 = 0;

    if (get_integer_size(expr) > 128) {
      NOT_IMPLEMENT;
    }

    if (get_integer_size(expr) == 128) {
        value_uint128 = get_integer_value_high(expr);
        value_uint128 <<= 64;
        value_uint128 += value;
        value_int128 = value_uint128;
        return value_uint128 == 0;
    }
    return value == 0;
}

vector<string> parse_vector_cst(tree expr, uint64_t length)
{
    assert(TREE_CODE(expr) == VECTOR_CST);
    vector<string> ret(length, "");
    unsigned int vector_length = VECTOR_CST_NELTS(expr).to_constant();
    for (unsigned i = 0; i < vector_length; ++i) {
        tree elt = VECTOR_CST_ELT(expr, i);
        ret[i] = get_constant_str(elt, true);
    }
    return ret;
}

vector<uint64_t> parse_vector_cst_uint(tree expr, uint64_t length)
{
    assert(TREE_CODE(expr) == VECTOR_CST);
    vector<uint64_t> ret(length, 0);
    unsigned int vector_length = VECTOR_CST_NELTS(expr).to_constant();
    for (unsigned i = 0; i < vector_length; ++i) {
        tree elt = VECTOR_CST_ELT(expr, i);
        ret[i] = get_integer_value(elt);
    }
    return ret;
}
