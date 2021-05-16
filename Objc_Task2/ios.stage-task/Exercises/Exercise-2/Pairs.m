#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    NSInteger result = 0;
    for (int i = 0 ; i < array.count-1; i++) {
        for (int k = i+1; k < array.count; k++) {
            if (abs(array[i].intValue-array[k].intValue) == number.intValue) {
                result++;
            }
        }
    }
    return result;
}

@end
