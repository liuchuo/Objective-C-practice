//18.3实现<NSCopying>协议
要实现使用自己的类进行复制，必须根据<NSCoping>协议实现其中一两个方法
实现 copyWithZone:方法来相应copy消息
区分可变副本和不可变副本，还需要根据 <NSMutableCoping> 协议实现 mutableCopyWithZone: 方法
@interface Fraction: NSObject <NSCopying>
-(id) copyWithZone: (NSZone *)zone {
    Fraction *newFract = [[Fraction allocWithZone: zone] init];

    [newFract setTo: numerator over: denominator];
    return newFract;
}

你必须确定是否在类中实现浅复制或者深复制，并为其编写文档，以告知类的其他使用者

