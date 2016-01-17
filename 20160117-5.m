//15.2字符串对象
@"programming is fun"

//15.2.1 NSLog函数
#import <Foundation/Foundation.h>
int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSString *str = @"Programming is fun";
        NSNumber *intNumber = @100;

        NSLog(@"%@", str);
        NSLog(@"%@", intNumber);
    }
    return 0;
}


//15.2.2 description方法
-(NSString *)description {
    return [NSString stringWithFormat: @"%i/%i", numerator, denominator];
}