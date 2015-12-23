//
//  Fraction.h
//  Fraction Test
//
//  Created by ChenXin on 15/12/23.
//  Copyright © 2015年 ChenXin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;
-(double) convertToNum;

@end
