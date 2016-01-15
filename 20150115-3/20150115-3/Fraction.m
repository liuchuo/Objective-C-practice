//
//  Fraction.m
//  20150115-3
//
//  Created by ChenXin on 16/1/15.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

#import "Fraction.h"

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
