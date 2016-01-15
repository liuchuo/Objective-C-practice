//
//  main.m
//  20150115-2
//
//  Created by ChenXin on 16/1/15.
//  Copyright © 2016年 ChenXin. All rights reserved.
//
#import <Foundation/Foundation.h>
@interface Rectangle: NSObject
//继承NSObject之前一定要#import <Foundation/Foundation.h>

@property int width, height;
-(int) area;
-(int) perimeter;

-(void) setWidth: (int) w andHeight: (int) h;

@end


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


@interface Square: Rectangle

-(void) setSide: (int) s;
-(int) side;
@end


@implementation Square: Rectangle

-(void) setSide: (int) s {
    [self setWidth: s andHeight: s];
}
//[self width] = self.width

-(int) side {
    return self.width;
}
@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Square *mySquare = [[Square alloc] init];
        
        //ifMemberOf:
        //如果mySquare是Square对象的实例，可以通过[mySquare class]知道它所属的类
        
        if([mySquare isMemberOfClass: [Square class]] == YES)
            NSLog(@"mySquare is a member of Square class");
        
        if([mySquare isMemberOfClass: [Rectangle class]] == YES)
            NSLog(@"mySquare is a member of Rectangle class");
        
        if([mySquare isMemberOfClass: [NSObject class]] == YES)
            NSLog(@"mySquare is a member of NSObject class");
        
        //isKindOf:
        
        if([mySquare isKindOfClass: [Square class]] == YES)
            NSLog(@"mySquare is a kind of Square");
        
        if([mySquare isKindOfClass: [Rectangle class]] == YES)
            NSLog(@"mySquare is a kind of Rectangle");
        
        if([mySquare isKindOfClass: [NSObject class]] == YES)
            NSLog(@"mySquare is a kind of NSObject");
        
        //respondsTo:
        //+(BOOL)A respondsToSelector: @selector (B);
        //对象能否相应selector所指定的方法
        //用@selector (alloc) 为名为alloc的方法生成一个SEL类型的值，该方法是从NSObject类继承的
        
        if([mySquare respondsToSelector: @selector (setSide:)] == YES)
            NSLog(@"mySquare responds to setSide: method");
        
        if([mySquare respondsToSelector: @selector (setWidth:andHeight:)] == YES)
            NSLog(@"mySquare responds to setWidth:andHeight: method");
        
        if([Square respondsToSelector: @selector (alloc)] == YES)
            NSLog(@"Square class responds to alloc method");
        
        //instancesRespondTo:
        //指定的类实例是否能相应selector
        
        if([Rectangle instancesRespondToSelector: @selector (setSide:)] == YES)
            NSLog(@"Instances of Rectangle respond to setSide: method");
        
        if([Square instancesRespondToSelector: @selector (setSide:)] == YES)
            NSLog(@"Instances of Square respond to setSide: method");
        
        //isSubclassOfClass:
        //对象是否是指定类的子类~
        
        if([Square isSubclassOfClass: [Rectangle class]] == YES)
            NSLog(@"Square is a subclass of a rectangle");
    }
    return 0;
}