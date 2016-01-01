//使用点运算符访问属性
[myFraction numerator]
等价于
myFraction.numerator

[myFraction setNumerator: 1];
[myFraction setDenominator: 3];
等价于
myFraction.numerator = 1;
myFraction.denominator = 3;

#import "Fraction.h"
int main(int argc, char *argv[]) {
    @autoreleasepool {
        Fraction *myFraction = [[Fraction alloc] init];
        
        myFraction.numerator = 1;
        myFraction.denominator = 3;
        
        NSLog(@"The numerator is %i, and the denominator is %i",
              myFraction.numerator, myFraction.denominator);
    }
    return 0;
}
//点运算符可以用在属性和其他方法上面 但是一般情况下点运算符通常用在属性上
用于设置或取得实例变量的值 做其他工作的方法通常不是由点运算符执行的 二十使用传统的方括号形式的消息表达式作为首选的语法


