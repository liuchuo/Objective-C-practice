//id数据类型与静态类型
id变量不能使用点运算符，这样做编译器会报错的
不要养成把所有对象都声明为id类型的习惯，因为编译的时候检查出错误比运行的时候才发现错误要好很多
而且使用静态类型的变量更能够增加程序的可读性，一下子就知道你定义这个变量的目的是什么
#import <Foundation/Foundation.h>

@interface A: NSObject

-(void)print;
-(void)setnumber: (int) n;

@end

@implementation A {
    int num;
}

-(void) print {
    NSLog(@"%i", num);
}

-(void) setnumber: (int) n {
    num = n;
}

@end

int main(int argc, char *argv[]) {
    @autoreleasepool {
        id a;
        A *b = [[A alloc] init];
        [b setnumber: 666];
        a = b;
//        [a setnumber: 777];
        a.setnumber = 777;
        [a print];
    }
    printf("hello\n");
    return 0;
}

如果对id类型的变量使用点运算符，那么编译器将会报错，Property 'setnumber' not found on object of type '_strong id'