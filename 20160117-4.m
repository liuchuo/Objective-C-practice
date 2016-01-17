//第15章 数字、字符串和集合
#import <Foundation/Foundation.h>
是一种预编译的头文件，是编译器预先处理过的文件。通常所有的Xcode项目都会受益于预编译的头文件
使用预编译的头文件可以避免额外的时间开销。
在Xcode5中，名为“模块”的新功能可以帮助加快编译，以及帮助避免应用程序中使用不同的库出现的命名冲突

//15.1数字对象
使用NSNumber类，它会依据这些数据的类型创建对象
//使用 Number
#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSNumber *myNumber, *floatNumber, *intNumber;
        NSInteger myInt;

        //integer 型值
        intNumber = [NSNumber numberWithInteger: 100];
        myInt = [intNumber integerValue];
        NSLog(@"%li", (long)myInt);

        //long 型值
        myNumber = [NSNumber numberWithLong: 0xabcdef];
        NSLog(@"%lx", [myNumber longValue]);

        //char 型值
        myNumber = [NSNumber numberWithChar: 'X'];
        NSLog(@"%c", [myNumber charValue]);

        //float 型值
        floatNumber = [NSNumber numberWithFloat: 100.00];
        NSLog(@"%g", [floatNumber floatValue]);

        //double 型值
        myNumber = [NSNumber numberWithdouble: 12345e+15];
        NSLog(@"%lg", [myNumber doubleValue]);
    }
    return 0;
}