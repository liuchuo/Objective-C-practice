//实例变量的访问及数据的封装
#import <Foundation/Foundation.h>

@interface Fraction: NSObject

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;

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

-(int) numerator {
    return numerator;
}

-(int) denominator {
    return denominator;
}

@end

int main(int argc, char *argv[]) {
    Fraction *myFraction = [Fraction new];
    
    [myFraction setNumerator: 5];
    [myFraction setDenominator: 6];
    
    NSLog(@"the value of myFraction is : %i/%i",
          [myFraction numerator], [myFraction denominator]);
    
    return 0;
}