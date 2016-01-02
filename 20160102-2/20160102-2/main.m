//第八章 继承
//@interface Fraction: NSObject
//...
//@end
//类Fraction是从类NSObject派生来的

#import <Foundation/Foundation.h>

@interface ClassA: NSObject {
    int x;
}

-(void) initVar;
@end

@implementation ClassA
-(void) initVar {
    x = 100;
}
@end


@interface ClassB: ClassA
-(void) printVar;
@end

@implementation ClassB
-(void) printVar {
    NSLog(@"x = %i", x);
}
@end


int main(int argc, char *agrv[]) {
    @autoreleasepool {
        ClassB *b = [[ClassB alloc] init];
        
        [b initVar];
        [b printVar];
    }
    return 0;
}
