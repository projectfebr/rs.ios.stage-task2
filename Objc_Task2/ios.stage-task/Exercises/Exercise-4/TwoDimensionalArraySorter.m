#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    
    for (NSObject *obj in array) {
        if (![obj isKindOfClass:[NSArray class]]) {
            return @[];
        }
    }
    
    NSMutableArray *numbers = [NSMutableArray new];
    NSMutableArray *strings = [NSMutableArray new];
    
    for (NSArray *arr in array) {
        if ([arr[0] isKindOfClass:[NSNumber class]]) {
            [numbers addObjectsFromArray:arr];
        } else {
            [strings addObjectsFromArray:arr];
        }
    }
    
    if (numbers.count == 0) {
        return [strings sortedArrayUsingComparator:^NSComparisonResult(NSString *string1,NSString *string2) {
            return [string1 compare:string2];
        }];
    } else if (strings.count == 0) {
        return [numbers sortedArrayUsingComparator:^NSComparisonResult(NSNumber *string1,NSNumber *string2) {
            return [string1 compare:string2];
        }];
    } else {
        
        NSArray *sortedNumbers = [numbers sortedArrayUsingComparator:^NSComparisonResult(NSNumber *number1,NSNumber *number2) {
            return [number1 compare:number2];
        }];
        
        NSSortDescriptor* sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:nil ascending:NO selector:@selector(localizedCompare:)];
        NSArray *sortedStrings = [strings sortedArrayUsingDescriptors:@[sortDescriptor]];
        

        NSArray <NSArray *> *arr = @[sortedNumbers, sortedStrings];
        return arr;
    }
    
    return @[];
}

@end
