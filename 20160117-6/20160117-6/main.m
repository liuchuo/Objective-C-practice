//
//  main.m
//  20160117-6
//
//  Created by ChenXin on 16/1/17.
//  Copyright © 2016年 ChenXin. All rights reserved.
//


//15.2.3 可变对象与不可变对象
//不可变字符串
#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSString *str1 = @"This is string A";
        NSString *str2 = @"This is string B";
        NSString *res;
        NSComparisonResult compareResult;
        
        //计算字符串中的字符
        NSLog(@"Length of str1: %lu", [str1 length]);
        
        //将一个字符串复制到另一个字符串
        res = [NSString stringWithString: str1];
        NSLog(@"copy: %@", res);
        
        //将一个字符串复制到另一个字符串的末尾
        str2 = [str1 stringByAppendingString: str2];
        NSLog(@"Concatentation: %@", str2);
        
        //验证两个字符串是否相等
        if ([str1 isEqualToString: res] == YES)
            NSLog(@"str1 == res");
        else
            NSLog(@"str1 != res");
        
        //验证一个字符串是否小于、等于或者大于另一个字符串
        compareResult = [str1 compare: str2];
        
        if (compareResult == NSOrderedAscending)
            NSLog(@"str1 < str2");
        else if (compareResult == NSOrderedSame)
            NSLog(@"str1 == str2");
        else //必须是NSOrderedDescending
            NSLog(@"str1 > str2");
        
        //将字符串转化为大写
        res = [str1 uppercaseString];
        NSLog(@"Uppercase conversion: %s", [res UTF8String]);
        
        //将字符串转化为小写
        res = [str1 lowercaseString];
        NSLog(@"Lowercase conversion: %@", res);
        
        NSLog(@"Original string: %@", str1);
        
        
        NSRange subRange;
        
        //从字符串中提取前3个字符
        res = [str1 substringToIndex: 3];
        NSLog(@"First 3 chars of str1: %@", res);
        
        //提取从索引5开始直到结尾的子字符串
        res = [str1 substringFromIndex: 5];
        NSLog(@"Chars from index 5 of str1: %@", res);
        
        //提取从索引5开始到索引13的子字符串（6个字符）
        res = [[str1 substringFromIndex: 8] substringToIndex: 6];
        NSLog(@"Chars from index 8 through 13: %@", res);
        
        //更简单的方法
        res = [str1 substringWithRange: NSMakeRange(8, 6)];
        NSLog(@"Chars from index 8 through 13: %@", res);
        
        //从一个字符串中查找一个字符串
        subRange = [str1 rangeOfString: @"string A"];
        NSLog(@"String is at index %lu, length is %lu",
              subRange.location, subRange.length);
        
        subRange = [str1 rangeOfString: @"string B"];
        if(subRange.location == NSNotFound)
            NSLog(@"String not found");
        else
            NSLog(@"String is at index %lu, length is %lu",
                  subRange.location, subRange.length);
    }
    return 0;
}