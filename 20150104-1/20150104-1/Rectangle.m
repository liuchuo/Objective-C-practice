//
//  Rectangle.m
//  20150104-1
//
//  Created by ChenXin on 16/1/4.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

@synthesize width, height;

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
