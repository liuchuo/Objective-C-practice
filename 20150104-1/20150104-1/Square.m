//
//  Square.m
//  20150104-1
//
//  Created by ChenXin on 16/1/4.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

#import "Square.h"

@implementation Square: Rectangle

-(void) setSide: (int) s {
    [self setWidth: s andHeight: s];
}
//[self width] = self.width

-(int) side {
    return self.width;
}

@end
