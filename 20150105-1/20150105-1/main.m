//main.m 测试程序
#import "Rectangle.h"
#import "XYPoint.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint *mypoint = [[XYPoint alloc] init];
        
        [mypoint setX: 100 andY: 200];
        
        [myRect setWidth: 5 andHeight: 8];
        myRect.origin = mypoint;
        
        NSLog(@"Rectangle w = %i, h = %i", myRect.width, myRect.height);
        
        NSLog(@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
        //myRect.origin.y = [[myRect origin] y]
        NSLog(@"Area = %i, Perimeter = %i", [myRect area], [myRect perimeter]);
    }
    return 0;
}