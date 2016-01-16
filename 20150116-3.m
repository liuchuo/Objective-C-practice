//11.3 协议和代理
@protocol xxx
xxxx
@end

NSObject.h:
@protocol NSCpoying
-(id)copyWithZone: (NSZone *)zone;
@end

@interface AddressBook: NSObject <NSCpoying>
AddressBook是父类为NSObject的对象，并且它遵守NSCopying协议

如果采用多项协议，只需把它们都列在尖括号中，并用逗号隔开
@interface AddressBook: NSObject <NSCopying, NSCoding>

@optional指令后面列出的所有方法都是可选的
@protocol Drawing
-(void) paint;
-(void) erase;
@optional
-(void) outline;
@end