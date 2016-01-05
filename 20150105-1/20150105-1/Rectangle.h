//
//  Rectangle.h
//  20150105-1
//
//  Created by ChenXin on 16/1/5.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

// @class 指令
// 完整的接口文件Rectangle.h
#import <Foundation/Foundation.h>

@class XYPoint;
//编译器在遇到 Rectangle 定长的实例变量 XYPoint 时，必须了解 XYPoint 是什么
//@class 指令的作用是当编辑器遇见 XYPoint *origin; 这样的语句的时候，可以告知编译器 XYPoint 是一个类的名字
//origin 是 XYPoint 类的一个对象 这是编译器需要了解的
//如果需要引用 XYPoint 类的方法（在实现部分中），@class 指令是不够的 因为编译器需要更多的消息 例如什么类型、方法的返回类型是什么
@interface Rectangle: NSObject

@property int width, height;

-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(void) setWidth: (int) w andHeight: (int) h;
-(int) area;
-(int) perimeter;

@end