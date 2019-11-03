#include<stdint.h>

// type alias
typedef uint64_t limb;
// use 5 limbs to represent a field element
typedef limb felem[5];

__attribute__((used)) // prevent eliminated by optimization
static void add(felem sum, felem op1, felem op2)
{
    sum[0] = op1[0] + op2[0];
    sum[1] = op1[1] + op2[1];
    sum[2] = op1[2] + op2[2];
    sum[3] = op1[3] + op2[3];
    sum[4] = op1[4] + op2[4];
}
