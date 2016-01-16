//11.3.1 代理
定义了协议的类可以看作是将协议定义的方法代理给了实现他们的类




//11.4 合成对象
通过派生子类和分类等可扩展类定义。
还有一项技术可以定义一个类包含其他类的一个或多个对象
这个新类的对象就是所谓的合成雕像，因为它是由其他对象组成的
@interface Square: NSObject {
    Rectangle *rect;
}
-(int) setSide: (int) s;
-(int) side;
-(int) area;
-(int) perimeter;
@end
