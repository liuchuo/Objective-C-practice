//覆写方法
//不能通过继承删除或者减少方法 但是可以利用覆写来更改继承方法的定义
定义一个同名的新方法 必须新方法和旧方法具有相同的返回类型 参数的数目也相同
#import <Foundation/Foundation.h>
@interface ClassA: NSObject {
    int x;
}

-(void) initVar;
@end

@implementation classA
-(void) initVar {
    x = 100;
}
@end

@interface ClassB: ClassA 
-(void) initVar;
-(void) printVar;
@end

@implementation ClassB
-(void) initVar {
    x = 555;
}

-(void) printVar {
    NSLog(@"x = %i", x);
}
@end

int main(int argc, char *argv[]) {
    @autoreleasepool {
        CalssB *b = [[ClassB alloc] init];

        [b initVar];

        [b printVar];
    }
    return 0;
}