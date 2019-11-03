#include "smult.c"
#include "stdio.h"

int main()
{
    felem in[5] = { 2, 1, 0, 1, 0 };
    felem out[5] = { 2, 0, 2251799813685250, 0, 0 };
    fdifference_backwards(out, in);
    for (int i = 0; i < 5; i++) {
        printf(" out%d: 0x%llx \n", i, out[i]);
    }
}
