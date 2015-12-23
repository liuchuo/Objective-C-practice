//
//  main.m
//  Fraction Test
//
//  Created by ChenXin on 15/12/23.
//  Copyright © 2015年 ChenXin. All rights reserved.
//

#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String])

#import "Fraction.h"

int main(int argc, char *argv[]) {
    
    @autoreleasepool {
        Fraction *myFraction = [[Fraction alloc] init];
        [myFraction setNumerator: 1];
        [myFraction setDenominator: 3];
        
        NSLog(@"The value of myFraction is: ");
        [myFraction print];
    }
    return 0;
}
