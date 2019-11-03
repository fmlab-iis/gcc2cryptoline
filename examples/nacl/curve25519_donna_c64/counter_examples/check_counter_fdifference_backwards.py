#!/usr/bin/env python3

def to_num(limb1,limb2,limb3,limb4,limb5):
    return limb1 + limb2*(2**51) + limb3 * (2**102) + limb4 * (2**153) + limb5 * (2**204)

m= 2 ** 255 - 19

in1 = to_num(
    2,
    1,
    0,
    1,
    0
)

out1 = to_num(
    2,
    0,
    2251799713675250,
    0,
    0
)

out2 = to_num(0x0,0x1,0x7fffffffffffe,0x7ffffffffffff,0xffffffffffffffff)


print((in1-out1)%m)
print(out2%m)

assert (out2 % m) == ( (in1 - out1) % m )
