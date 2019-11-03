#ifndef GIMPLE_HELPER_H
#define GIMPLE_HELPER_H

#include "common.hpp"
#include "helper.hpp"

extern std::ostream DDEBUG;
extern std::stringstream RESULT;
extern vector<string> result_vec;
extern const char* target_func_name;
extern int WORD_SIZE;
extern bool is_debug;
extern bool dump;

extern bool USE_HEURISTIC;
extern bool found;

void print_gimple_stmt_custom(FILE* file, gimple* g, int spc, dump_flags_t flags);
string get_basic_block_name(basic_block bb);
bool is_expr_unsigned(tree expr);
bool is_expr_signed(tree expr);
std::string get_signed_flag(tree expr, bool fortype = false);
uint64_t get_integer_value(tree expr);
uint64_t get_integer_value_high(tree expr);
uint64_t get_integer_value_low(tree expr);
std::string get_ssa_name_str(tree expr);
uint64_t get_component_field_offset(tree expr);
string get_component_field_name(tree expr);
string get_tree_name(tree expr);
int get_integer_size(tree expr);
tree get_type(tree expr);
int get_type_size(tree expr);
int get_ssa_name_size(tree expr);
int get_mem_ref_size(tree expr);
int get_expr_size(tree expr);
uint64_t get_vector_length(tree expr);
bool is_vector_type(tree expr);
string generate_cryptoline_type(tree type);
string get_constant_str(tree expr, bool append_type = false, bool signed_to_unsigned = false);
vector<string> parse_vector_cst(tree expr, uint64_t length);
vector<uint64_t> parse_vector_cst_uint(tree expr, uint64_t length);
#endif
