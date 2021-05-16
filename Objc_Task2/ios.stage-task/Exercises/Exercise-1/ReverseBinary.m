#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    n = (n & 0x55) << 1 | (n & 0xAA) >> 1;
    n = (n & 0x33) << 2 | (n & 0xCC) >> 2;
    n = (n & 0x0F) << 4 | (n & 0xF0) >> 4;
    return n;
}
