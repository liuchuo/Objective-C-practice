//
//  Fraction.h
//  20160101-2
//
//  Created by ChenXin on 16/1/1.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

//接口文件: Fraction.h
#import <Foundation/Foundation.h>

@interface Fraction: NSObject
@property int numerator, denominator;

-(void) print;
-(void) setTo: (int) n over: (int) d;
-(double) convertToNum;
@end
