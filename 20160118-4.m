//15.5集合对象
NSMutableSet 是 NSSet 的子类
NSIndexSet

@interface NSSet (Printing)
-(void) print;
@end

@implementation NSSet (Printing)
-(void) print {
    printf("{ ");

    for (NSNumber *element in self)
        printf(" %li ", (long) [element integerValue]);

    printf("}\n");
}
@end

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSMutableSet *set1 = [NSMutableSet setWithObjects:
            @1, @3, @10, nil];
        printf("set1: ");
        [set1 print];

        if ([set1 isEqualToSet: set2] == YES)
            NSLog(@"set1 equals set2");
        else
            NSLog(@"set1 is not equal to set2");

        if ([set1 containsObject: @10] == YES)
            NSLog(@"set1 contains 10");
        else
            NSLog(@"set1 does not contain 10");

        //在可变集合set1中添加和溢出对象
        [set1 addObject: @4];
        [set1 removeObject: @10];

        //获得两个集合的交际
        [set1 intersectSet: set2];
        NSLog(@"set1 intersect set2: ");
        [set1 print];

        //获得两个集合的并集
        [set1 unionSet: set3];
        NSLog(@"set1 union set3: ");
        [set1 print];
    }
    return 0;
}