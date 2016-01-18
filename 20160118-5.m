//第16章 使用文件
NSFileManager 类：利用文件系统对文件或目录执行基本操作
NSFileHandle 类：打开文件并对文件执行多次读/写操作
NSURL 类：允许在应用中使用URL方法
NSBundle 类：提供了允许在应用中使用包(bundle)的方法，包括搜索包中的特定资源（如JPEG图片）


//16.1 管理文件和目录：NSFileManager
~是用户主目录的缩写
~linda == /User/linda
.表示当前目录
..表示副目录

NSFileManager *fm;
...
fm = [MSFileManager defaultManager];

[fm removeItemAtPath: @"todolist" error: NULL];

if ([fm removeItemAtPath: @"todolist" error: NULL] == NO) {
    NSLog(@"Couldn't remove file todolist");
    return 1;
}

NSString *fName = @"testfile";
NSFileManager *fm;
NSDictionary *attr;

//创建一个副本
if([fm copyItemAtPath: fName toPath: @"newfile" error: NULL] == NO) {
    NSLog(@"File Copy failed!");
    return 2;
}

NSData NSMutableData 类
NSData *fileData;
fileData = [fm contentsAtPath: @"newfile2"];

if(fileData == nil) {
    NSLog(@"File read failed!");
    return 1;
}

-(NSString *)currentDirectoryPath 获取当前目录
-(BOOL) changeCurrentDirectoryPath:path 更改当前目录


//16.1.3 枚举目录中的内容
使用enumeratorAtPath:方法或者contentsOfDictoryAtPath:error:方法
都可以完成枚举过程。可以获得目录的内容列表。

NSString *path;
NSFileManger *fm;
NSDictionaryEnumerator *dirEnum;

fm = [NSFileManager defaultManager];
path = [fm currentDirectoryPath];

derEnum = [fm enumeratorAtPath: path];
NSLog(@"%@", path);