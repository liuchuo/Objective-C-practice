#import "Square.h"
#import <Foundation/Foundation.h>

int main(int argc, char * argv[]) {
    @autoreleasepool {
        Square *mySquare = [[Square alloc] init];
        
        [mySquare setSide: 5];
        
        NSLog(@"Square s = %i", [mySquare side]);
        NSLog(@"Area = %i, Perimeter = %i", [mySquare area], [mySquare perimeter]);
    }
    return 0;
}