//16.2 使用路径： NSPathUtilities.h
包含了NSString的函数和分类扩展，它允许你操作路径名


//16.4 NSURL类
#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        NSURL *myURL = [NSURL URLWithString: @"http://www.baidu.com"];
        NSString *myHomePage = [NSString stringWithContentsOfURL: myURL
                encoding: NSASCIIStringEncoding error: NULL];
        NSLog(@"%@", myHomePage);
    }
    return 0;
}