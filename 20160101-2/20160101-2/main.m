//
//  main.m
//  20160101-2
//
//  Created by ChenXin on 16/1/1.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

//测试文件：main.m
#import "Fraction.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        
        [aFraction setTo: 100 over: 200];
        [aFraction print];
        
        [aFraction setTo: 1 over: 3];
        [aFraction print];
    }
    return 0;
}
