//
//  Rectangle.m
//  20150105-1
//
//  Created by ChenXin on 16/1/5.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

//在 Rectangle.m 中添加新方法
#import "Rectangle.h"

@implementation Rectangle {
    XYPoint *origin;
}

@synthesize width, height;

-(void) setOrigin: (XYPoint *)pt {
    origin = pt;
}

-(XYPoint *) origin {
    return origin;
}

-(void) setWidth: (int) w andHeight: (int) h {
    width = w;
    height = h;
}

-(int) area {
    return width * height;
}

-(int) perimeter {
    return (width + height) * 2;
}
@end
