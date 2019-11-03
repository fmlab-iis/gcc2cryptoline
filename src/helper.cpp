#include "helper.hpp"

std::ostream& operator<<(std::ostream& dest, __uint128_t value)
{
    std::ostream::sentry s(dest);
    if (s) {
        __uint128_t tmp = value;
        char buffer[130];
        char* d = std::end(buffer);
        do {
            --d;
            *d = "0123456789abcdef"[tmp % 16];
            tmp /= 16;
        } while (tmp != 0);
        --d;
        *d = 'x';
        --d;
        *d = '0';
        int len = std::end(buffer) - d;
        if (dest.rdbuf()->sputn(d, len) != len) {
            dest.setstate(std::ios_base::badbit);
        }
    }
    return dest;
}
std::ostream& operator<<(std::ostream& dest, __int128_t value)
{
    std::ostream::sentry s(dest);
    if (s) {
        __uint128_t tmp = value < 0 ? -value : value;
        char buffer[130];
        char* d = std::end(buffer);
        do {
            --d;
            *d = "0123456789abcdef"[tmp % 16];
            tmp /= 16;
        } while (tmp != 0);
        --d;
        *d = 'x';
        --d;
        *d = '0';
        if (value < 0) {
            --d;
            *d = '-';
        }
        int len = std::end(buffer) - d;
        if (dest.rdbuf()->sputn(d, len) != len) {
            dest.setstate(std::ios_base::badbit);
        }
    }
    return dest;
}

/* 64bit version */
int count_leading_zero(uint64_t value)
{
    if (value == 0)
        return 64;
    return __builtin_clzll(value);
}
int count_trailing_zero(uint64_t value)
{
    if (value == 0)
        return 64;
    return __builtin_ctzll(value);
}
int count_leading_one(uint64_t value)
{
    uint64_t tmp = ~value;
    if (tmp == 0)
        return 64;
    return __builtin_clzll(tmp);
}
int count_trailing_one(uint64_t value)
{
    uint64_t tmp = ~value;
    if (tmp == 0)
        return 64;
    return __builtin_ctzll(tmp);
}
bool all_zero(uint64_t value)
{
    return count_leading_zero(value) == 64;
}
bool all_one(uint64_t value)
{
    return count_leading_one(value) == 64;
}
bool is_zero_and_one(uint64_t value)
{
    return (count_leading_zero(value) + count_trailing_one(value)) == 64;
}
bool is_one_and_zero(uint64_t value)
{
    return (count_leading_one(value) + count_trailing_zero(value)) == 64;
}
/* 128bit version 2 part */
int count_leading_zero(uint64_t value_lo, uint64_t value_hi)
{
    int ret = count_leading_zero(value_hi);
    if (value_hi == 0)
        ret += count_leading_zero(value_lo);
    return ret;
}
int count_trailing_zero(uint64_t value_lo, uint64_t value_hi)
{
    int ret = count_trailing_zero(value_lo);
    if (value_lo == 0)
        ret += count_trailing_zero(value_hi);
    return ret;
}
int count_leading_one(uint64_t value_lo, uint64_t value_hi)
{
    int ret = count_leading_one(value_hi);
    if (ret == 64)
        ret += count_leading_one(value_lo);
    return ret;
}
int count_trailing_one(uint64_t value_lo, uint64_t value_hi)
{
    int ret = count_trailing_one(value_lo);
    if (ret == 64)
        ret += count_trailing_one(value_hi);
    return ret;
}
bool all_zero(uint64_t value_lo, uint64_t value_hi)
{
    return count_leading_zero(value_lo, value_hi) == 128;
}
bool all_one(uint64_t value_lo, uint64_t value_hi)
{
    return count_leading_one(value_lo, value_hi) == 128;
}
bool is_zero_and_one(uint64_t value_lo, uint64_t value_hi)
{
    return (count_leading_zero(value_lo, value_hi) + count_trailing_one(value_lo, value_hi)) == 128;
}
bool is_one_and_zero(uint64_t value_lo, uint64_t value_hi)
{
    return (count_leading_one(value_lo, value_hi) + count_trailing_zero(value_lo, value_hi)) == 128;
}
/* 32bit version */
int count_leading_zero(uint32_t value)
{
    if (value == 0)
        return 32;
    return __builtin_clz(value);
}
int count_trailing_zero(uint32_t value)
{
    if (value == 0)
        return 32;
    return __builtin_ctz(value);
}
int count_leading_one(uint32_t value)
{
    uint32_t tmp = ~value;
    if (tmp == 0)
        return 32;
    return __builtin_clz(tmp);
}
int count_trailing_one(uint32_t value)
{
    uint64_t tmp = ~value;
    if (tmp == 0)
        return 32;
    return __builtin_ctz(tmp);
}
bool all_zero(uint32_t value)
{
    return count_leading_zero(value) == 32;
}
bool all_one(uint32_t value)
{
    return count_leading_one(value) == 32;
}
bool is_zero_and_one(uint32_t value)
{
    return (count_leading_zero(value) + count_trailing_one(value)) == 32;
}
bool is_one_and_zero(uint32_t value)
{
    return (count_leading_one(value) + count_trailing_zero(value)) == 32;
}
