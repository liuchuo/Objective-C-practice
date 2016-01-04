//
//  Rectangle.h
//  20150104-1
//
//  Created by ChenXin on 16/1/4.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject

@property int width, height;
-(int) area;
-(int) perimeter;

-(void) setWidth: (int) w andHeight: (int) h;

@end
