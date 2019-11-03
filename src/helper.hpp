#ifndef HELPER_H
#define HELPER_H

#include "common.hpp"

extern std::ostream DDEBUG;
extern std::stringstream RESULT;
extern vector<string> result_vec;
extern const char* target_func_name;
extern int WORD_SIZE;
extern bool is_debug;
extern bool dump;

extern bool USE_HEURISTIC;
extern bool found;

std::ostream& operator<<(std::ostream& dest, __uint128_t value);
std::ostream& operator<<(std::ostream& dest, __int128_t value);

// several helper functions for different types
int count_leading_zero(uint64_t value);
int count_trailing_zero(uint64_t value);
int count_leading_one(uint64_t value);
int count_trailing_one(uint64_t value);
bool all_zero(uint64_t value);
bool all_one(uint64_t value);
bool is_zero_and_one(uint64_t value);
bool is_one_and_zero(uint64_t value);
int count_leading_zero(uint64_t value_lo, uint64_t value_hi);
int count_trailing_zero(uint64_t value_lo, uint64_t value_hi);
int count_leading_one(uint64_t value_lo, uint64_t value_hi);
int count_trailing_one(uint64_t value_lo, uint64_t value_hi);
bool all_zero(uint64_t value_lo, uint64_t value_hi);
bool all_one(uint64_t value_lo, uint64_t value_hi);
bool is_zero_and_one(uint64_t value_lo, uint64_t value_hi);
bool is_one_and_zero(uint64_t value_lo, uint64_t value_hi);
int count_leading_zero(uint32_t value);
int count_trailing_zero(uint32_t value);
int count_leading_one(uint32_t value);
int count_trailing_one(uint32_t value);
bool all_zero(uint32_t value);
bool all_one(uint32_t value);
bool is_zero_and_one(uint32_t value);
bool is_one_and_zero(uint32_t value);


#endif
