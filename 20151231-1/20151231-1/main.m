//
//  main.m
//  20151231-1
//
//  Created by ChenXin on 15/12/31.
//  Copyright © 2015年 ChenXin. All rights reserved.
//

//合成存取方法
自动生成设值方法和取值方法（统称为存取方法）
第一步：在借口部分中使用@property指令标识属性
@interface Fraction: NSObject

@property int numerator, denominator;

-(void) print;
-(double) convertToNum;
@end

第二步：在实现部分使用@synthesize指令 让编译器自动生成或合成这些方法
#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

-(void) print {
    NSLog(@"%i/%i", numerator, denominator);
}

-(double) convertToNum {
    if (denominator != 0)
        return double numerator / denominator;
    else
        return NAN;
}
@end