//
//  XYPoint.h
//  20150105-1
//
//  Created by ChenXin on 16/1/5.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

//Point类和对象创建
//定义一个名为XYPoint的类
//XYPoint.h 接口文件
#import <Foundation/Foundation.h>

@interface XYPoint: NSObject

@property int x, y;

-(void) setX: (int) xVal andY: (int) yVal;
@end
