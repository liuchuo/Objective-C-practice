//动态绑定和id类型
id类型是一种通用的对象类型 可以用来存储属于任何类的对象
#import "Fraction.h"
#import "Complex.h"

int main(int argc, int *argv[]) {
    @autoreleasepool {
        id dataValue;
        Fraction *f1 = [[Fraction alloc] init];
        Complex *c1 = [[Complex alloc] init];

        [f1 setTo: 2 over: 5];
        [f2 setReal: 10.0 andImaginary: 2.5];

        dataValue = f1;
        [dataValue print];

        dataValue = c1;
        [dataValue print];
    }
    return 0;
}

存储在id变量中的对象类型在编译时无法确定，只在运行的时候才确定id变量中的变量类型
id dataValue = [[Fraction alloc] init];
...
[dataValue setReal: 10.0 andImaginary: 2.5];
这样的代码在编译的时候不会产生警告信息，这是因为编译器在处理源文件的时候并不知道存储在dataValue中的对象类型
直到运行包含有这些代码的程序时候，程序才会出现一下错误信息
-[Fraction setReal:andImaginary:]: unrecognized selector sent to instance 0x103f00
