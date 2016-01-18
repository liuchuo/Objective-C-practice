//第18章 复制对象
使用简单的赋值语句将对象赋值给另一个对象
pt = origin;
实际上它们都共同引用内存中的同一个对象

使用Foundation类中的 copy 和 mutableCopy 的方法来创建对象的副本
dataArray2 = [dataArray mutableCopy];


for(NSString *elem in dataArray)
    NSLog(@"  %@", elem);




//18.2 浅复制与深复制
#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSMutableArray *dataArray = [NSMutableArray arrayWithObjects:
            [NSMutableString stringWithString: @"one"],
            [NSMutableString stringWithString: @"two"],
            [NSMutableString stringWithString: @"three"],
            nil
        ];
        NSMutableArray *dataArray2;
        NSMutableString *mStr;

        NSLog(@"dataArray: ");
        for (NSString *elem in dataArray) 
            NSLog(@" %@", elem);

        dataArray2 = [dataArray mutableCopy];

        mStr = dataArray[0];
        [mStr appendString: @"ONE"];

        NSLog(@"dataArray: ");
        for (NSString *elem in dataArray)
            NSLog(@" %@", elem);

        NSLog(@"dataArray2: ");
        for(NSString *elem in dataArray2)
            NSLog(@" %@", elem);
    }
    return 0;
}

默认的浅复制方式 mutableCopy方法复制数组时，在内存中为新的数组对象分配了空间，并将单个元素复制到新数组中
然后将原始数组中的每个元素复制到新位置意味着：仅将引用从一个数组元素复制到另一个数组元素
这样做的结果，就是将这两个数组中的元素都指向内存中的同一个数组元素

若要为数组中的每个元素创建完全不同的副本，需要执行所谓的深复制
归档中将展示如何使用Foundation的归档功能来创建对象的深复制