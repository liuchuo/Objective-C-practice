//使用分数的程序——用类实现
/*
包含@interface @implementation @program 三个部分
@interface 部分用于描述类和类的方法
@implementation 部分用于描述数据（类对象的实例变量存储的数据），并实现在街口中声明方法的实际代码
@program 部分用于实现程序的预期目的
*/
#import <Foundation/Foundation.h>

@interface Fraction: NSObject

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;

@end


@implementation Fraction {
    int numerator;
    int denominator;
}

-(void) print {
    NSLog(@"%i/%i", numerator, denominator);
}

-(void) setNumerator: (int) n {
    numerator = n;
}

-(void) setDenominator: (int) d {
    denominator = d;
}

@end


int main(int argc, char *argv[]) {
    @autoreleasepool {
        Fraction *myFraction, *frac1;
        
        myFraction = [Fraction alloc];
        myFraction = [myFraction init];
        
        /*
        myFraction = [[Fraction alloc] init];
        */
        
        /*
        Fraction *myFraction = [[Fraction alloc] init];
        */
        frac1 = [[Fraction alloc] init];
        
        
        [myFraction setNumerator: 1];
        [myFraction setDenominator: 3];
        
        [frac1 setNumerator:2];
        [frac1 setDenominator:7];
        
        NSLog(@"The first value of myFraction is:");
        [myFraction print];
        
        NSLog(@"Second fraction is:");
        [frac1 print];
    }
    
    printf("hello\n");
    return 0;
}