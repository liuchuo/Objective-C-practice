//
//  Fraction.m
//  20160101-2
//
//  Created by ChenXin on 16/1/1.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

//实现文件: Fraction.m
#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

-(void) print {
    NSLog(@"%i/%i", numerator, denominator);
}

-(void)setTo: (int) n over: (int) d {
    numerator = n;
    denominator = d;
}

-(double) convertToNum {
    if (denominator != 0)
        return (double) numerator / denominator;
    else
        return NAN;
}
@end
