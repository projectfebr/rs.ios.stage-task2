#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    
    if (numbersArray == nil || numbersArray.count == 0) return @"";
    
    for (int i = 0; i < numbersArray.count; i++) {
        int currentValue = [(NSNumber *)[numbersArray objectAtIndex:i] intValue];
        if (currentValue > 255) {
            return @"The numbers in the input array can be in the range from 0 to 255.";
        }
        if (currentValue < 0) {
            return @"Negative numbers are not valid for input.";
        }
    }
    
    NSMutableArray *mutableArray = [NSMutableArray new];
    for (int i =0; i<4; i++) {
        if (i < numbersArray.count) {
            [mutableArray addObject: numbersArray[i] ];
        } else {
            [mutableArray addObject:@0];
        }
    }
    
    NSString *result = [NSString stringWithFormat:@"%d.%d.%d.%d", [mutableArray[0] intValue], [mutableArray[1] intValue], [mutableArray[2] intValue], [mutableArray[3] intValue]];

    return result;
}

@end
