//如何在程序中捕获异常-使用@try处理异常
//异常处理：使用 @try 和 @catch
#import "Fraction.h"
int main(int argc, char *argv[]) {
   
    @autoreleasepool {
        Fraction *f = [[Fraction alloc] init];
        
        @try {
            [f noSuchMethod];
        }
        @catch (NSException *exception) {
            NSLog(@"Caught [exception name]: %@ \n ; [exception reason]: %@", [exception name], [exception reason]);
        }
        NSLog(@"Execution continues!");
    }
    return 0;
}
/*虽然不知道，为什么编译运行不了。。都是直接报错了。。
因为try catch无法捕获UncaughtException，而oc中大部分crash如：内存溢出、野指针等都是无法捕获的，而能捕获的只是像数组越界之类（这真心需要catch么？），所以try catch对于oc来说，比较鸡肋。*/