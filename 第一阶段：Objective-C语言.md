# 第一阶段：Objective-C语言

## Objective-C简介

- 在C语言基础上做了面向对象扩展
- 与Cocoa和Cocoa Touch框架高度集成，支持开发Mac OS X、iOS应用
- 支持与Swift语言的双向互操作（是通过LLVM编译器架构完成的）

> LLVM是构架编译器(compiler)的框架系统，以C++编写而成，用于优化以任意程序语言编写的程序的编译时间(compile-time)、链接时间(link-time)、运行时间(run-time)以及空闲时间(idle-time)，对开发者保持开放，并兼容已有脚本。LLVM计划启动于2000年，最初由University of Illinois at Urbana-Champaign的Chris Lattner主持开展。2006年Chris Lattner加盟Apple Inc.并致力于LLVM在Apple开发体系中的应用。Apple也是LLVM计划的主要资助者。

- Objective-C演进的历史发展顺序

  - 1972年 C语言

  - 1972年 smalltalk语言

    > Smalltalk被公认为历史上第二个面向对象的程序设计语言和第一个真正的集成开发环境 (IDE)。由Alan Kay，Dan Ingalls，Ted Kaehler，Adele Goldberg等于70年代初在Xerox PARC开发。Smalltalk对其它众多的程序设计语言的产生起到了极大的推动作用，主要有：Objective-C，Actor， Java 和Ruby等。90年代的许多软件开发思想得利于Smalltalk，例如Design Patterns， Extreme Programming(XP)和Refactoring等。

  - 1983年 C++语言

  - 1983年 Objective-C语言

  - 2014年 Swift

- 如何掌握高级编程语言

  - 向下：底层思维，把握机器底层，从微观理解对象构造
    - 语言构造
    - 编译转换
    - 内存模型
    - 运行时机制
  - 向上：抽象思维，将我们周围的世界抽象为程序代码
    - 面向对象
    - 组件封装
    - 设计模式
    - 架构模式

- “时空人”三位一体分析法

  - 对时间分析——发生在什么时候？
    - compile-time & run-time
  - 空间分析——变量放在哪里？
    - heap & stack
  - 人物分析——代码哪里来的？
    - programmer & complier/runtime/framwork

- 两种开发方式

  - Clang和GCC命令行
    - 适合调试、研究、微观探查
  - Xcode项目
    - 构建正规工程项目
    - 使用大型框架，追求设计质量和代码组织

- Objective-C里面使用#import

  - `#import`和`#include`的区别

  > import指令是Object-C针对#include的改进版本，#import确保引用的文件只会被引用一次，这样就不会陷入递归包含的问题中

- Objective-C向下兼容C语言，在Objective-C里面可以直接写C语言的代码

- ```
  int main(int argc, const char *argv[])
  ```

- `@autorelesepool{ }`是为了支持ARC（自动引用计数）内存管理机制而设立的

- `@"hello,world!"`在字符串前面添加@，表示这是OC里面的字符串

- .m是Objective-C的扩展名

- 使用命令行编译.m的文件（clang）

  - cd 到当前文件目录
  - ls 列出当前目录的所有文件
  - `clang -fobjc-arc helloworld.m -o filename  `
    - -arc表示让oc支持ARC内存管理，一开始oc是不支持ARC的
    - -o 是output的意思
  - `./filename`执行可执行文件

  > 把clang换成gcc也可以 `gcc -fobjc-arc helloworld.m -o filename`，不过推荐使用clang，swift语言也是基于clang编译器

- `clang -help`可以输出clang的命令手册

- Objective-C是直接生成机器码的，和java、javascript其他语言不一样（运行时候需要解释）

- LLVM-底层虚拟机，有LLVM optimizer、LLVM Code Generator

- Objective-C编译过程：

  - Clang Front End（Clang是编译器的前端工具）
  - LLVM optimizer（优化器）
  - LLVM Code Generator（代码生成器）

  ​

## 类与对象

### 类型系统

- 引用类型
  - 类 class
  - 指针 pointer
  - 块 block
- 值类型
  - 基础数据类型
  - 结构类型struct
  - 枚举类型enum
- 类型装饰
  - 协议 protocol
  - 类别 category
  - 扩展 extension

------

- Objective-C里面的@interface与java里面的interface不一样，就是写在头文件里面的，作为类的一个外界可以调用的函数的声明

```objective-c
@interface RPoint : NSObject
@property int x;//属性
@property int y;
  
-(void)print;
  
@end
```

- 而java中的interface，接口是一种特殊的抽象类。类必须实现接口中的方法，否则其为一抽象类。 实现中接口和类相同。
  - 一个接口中，所有方法为公开、抽象方法；所有的属性都是公开、静态、常量。 
  - 一个类除继承另外一个类，还可以实现接口
  - 接口和接口之间可以定义继承关系，并且接口之间允许实现多继承。
- 将oc中的interface理解为“非正式协议（或说接口）”，prototal理解为“正式协议（或说接口）”，protocal就相当于java中的interface；而interface和implementation共同代表一个类，两者的组合相当于java中的class，即oc中的类必须包括两部分，interface部分和implementation部分，这才是oc中的一个类的完整声明。
- 所以在OC中，不妨不要将interface叫做接口，直接叫做类声明部分来得容易理解多了，简而言之，oc中interface是类的一个部分，和implementation共同组成一个完整的类。

------

-(void) print; “-”表示实例方法

```objective-c
//实现
@impelmentation RPoint

@end
```

```objective-c
//创建对象
RPoint *rp1 = [[RPoint alloc]init];//动态的请求一个内存分配
[rp1 print];//给rp1发送一个print的消息

//创建结构体
SPoint sp1;
sp1.x = 10;
sp2.y = 20;
```

- 类与结构体的区别
  - 只能在类里面写方法，不能在结构体里面写方法
  - 类——对象，结构体——值
  - 类——引用类型
    - 位于栈上的指针（引用）
    - 位于堆上的实体对象
  - 结构体——值类型
    - 实例直接位于栈中
  - 拷贝行为：
    - classname *a = b; a和b都是指针（指针存储在栈上），都指向同一个对象（对象存储在堆中），对象的值改变，a和b同时改变
    - structname a = b; 进行的是值拷贝（复制值后存储在栈上），如果改变b的值，a的值不会跟着改变
  - 传参行为：
    - 传参的本质上就是拷贝，因为对象传入的是指针，所以值改变的函数调用完毕之后，对象的值会改变，而结构体的值不会改变（因为结构体是值传递）
    - 在main函数调用子函数的时候，系统会为子函数建立一个栈，对象传参后存放的是引用（指针），结构体传参后存储的是结构体的值的拷贝
- 栈(stack)和堆(heap)的区别：
  - 栈：存储值类型（有时候翻译成“堆栈”）
    - 无ARC（自动引用计数）负担，由系统自动管理，以执行函数为单位（一个函数一个栈）
    - 空间大小编译时决定（根据参数和局部变量可以确定）
    - 函数执行时，系统自动分配一个栈
    - 函数执行结束，系统会立即回收stack
    - 函数之间通过拷贝值传递
    - 具有局限性，大小有限额，超出会stack overflow（栈溢出）（一般是超大递归、死循环情况）
  - 堆：存储引用类型对象
    - 分配由程序员手动请求（[a alloc]）(c语言里面的malloc)
    - 释放有两种方式，可以手工，也可以ARC机制自动释放
    - 函数之间通过拷贝引用（指针）传递
    - 具有全局性，总体大小无限制（受限于系统内存整体大小）

------

## 数据成员：属性与实例变量

#### 属性

- 数据成员分为属性和实例变量，属性是对外的，实例变量是对内的，属性描述类的对外接口，也没有私有属性这种说法，就是公有的
- [employ firstName] 和 employ.firstName是一样的，推荐使用点表达式
- 默认情况下，编译器会为属性定义propertyName自动合成：
  - 一个getter访问器方法：propertyName
  - 一个setter访问器方法：setPropertyName
  - 一个实例变量_propertyName
- 编译器默认规则是建立的实例变量名字为在前面加个下划线_
- 可以手动更改实例变量和访问器方法的名字，但是一般情况下没有这样的必要

```objective-c
//更改访问器方法的名字：
@property (getter = GivenName, setter = GivenName:) NSString* firstName;

//更改属性对应的实例变量的名字
@synthesize firstName = givenName;
```

- **@property与@synthesize配对使用**，在头文件里面定义一个属性，使用@property int count;  ，在实现文件里面使用@synthesize count;能够自动生成count的getter和setter方法

- 在Objective-c 中，通知对象执行某种操作称为**发送消息**（有时候也叫做“调用方法”）。代码[shape draw]表示向shape对象发送draw消息。

- Objective-C中使用方括号是为了增加代码的可读性，[self 把:(苹果)和:(香蕉)搅拌在一起];
  和this->把搅拌在一起(苹果，香蕉);的区别，可以省去注释文档，当然也可以使用点调用

- Objective-C中使用方括号的形式继承自smalltalk，方法调用不叫方法调用，而是传递消息。打 [ ] 的时候不需要按 SHIFT，从这一点来说，比 ( 和 { 都更容易输入。

- Objective-C默认不提供叫做类属性的事物，一般说实例属性，但是（java、C#）有，Objective-C可以有个方法模拟这种类属性

  - 在类实现文件（.m）的@implementation之外定义一个静态变量，例如：`static int _max = 100;` 在类的声明文件（.h）文件里面定义 `+(int) max`和`+(void)setMax:(int)newValue`（在@end之前）

  - 接着在实现文件里面@end之前实现max的定义的两个方法：

  - ```objective-c
    +(int)max {
      return _max;
    }
    +(void)setMax:(int)newValue {
      NSLog(@"set max...");
      _max - newValue;
    }
    ```

  - ```objective-c
    //在主函数里面，能够调用自己定义的属性方法
    [ClassName setMax:300];
    ClassName.max = 400;
    ```

  #### 实例变量

- 实例变量只能供类内访问，不能在类外访问。可以只定义实例变量，而不定义属性。只有实例变量，没有类变量。（只可以用定义静态变量的方法模拟类变量）

- 如果同时定义了getter和setter访问器方法，或者针对只读属性定义了getter访问器方法，编译器将不再合成实例变量。  只读属性：@property (readonly) NSString* fullName;

- 尽量不要用`_firstName`这种形式访问实例变量，使用`self.firstName`的方法访问：因为类类型的实例变量如果使用`_firstName`，引用类型的使用时可能会引起内存问题

- 在类外一律使用属性来访问，类内大多数也通过self使用属性访问，只有一下情况使用实例变量来访问：

  - 初始化器 init
  - 析构器 dealloc
  - 自定义访问器方法

  除了上面三种情况，否则在类内也要通过属性访问

- 因为属性里面自带系统生成的一些内存管理的方法，所以直接使用实例变量的话会失去这样的内存保护

- 实例变量的生存周期

  - 实例变量的存储，跟随对象实例存储在堆上
  - 值类型实例变量直接“内嵌”在对象实例中，跟随对象实例内存释放而被释放。
  - 引用类型实例变量通过指针“引用”堆上的引用类型实例，ARC针对引用进行计数管理，自动释放引用计数为0的对象

### 属性的描述特性(Attribute)

- 读写特性

  - 读写属性：readwrite（默认）
  - 只读属性：readonly

- 多线程特性

  - 原子性：atomic（默认）：在多线程情况下操作是原子性的，该属性在线程下要么完成这个操作，要么彻底不执行，不可能在该属性调用过程中被抢走
  - 非原子性：nonatomic

- 内存管理特性

  - ARC环境

    - 强引用strong（默认）
    - 若引用weak 阻止循环引用

    ```
    (weak与strong)不同的是：当一个对象不再有strong类型的指针指向它的时候，它就会被释放，即使改对象还有_weak类型的指针指向它
    一旦最后一个指向该对象的strong类型的指针离开，这个对象将被释放，如果这个时候还有weak指针指向该对象，则会清除掉所有剩余的weak指针
    只有在防止循环引用的情况下需要使用week，就是说父类中含有子类，子类又调用了父类，这样都无法release，会产生内存泄漏。所以把其中一个设为week，这样ARC就不会对它进行引用计数
    ```

    - 拷贝属性 copy 创建独立拷贝

    ```
    假设不希望出现连带的更改效应，在定义属性的时候加一个copy，这样就会在引用的时候创建一个独立的拷贝，一份新的内存，这样修改原属性就不会影响到新的拷贝
    ```

  - 其他情况

    - retain
    - assign
    - unsafe_unretained

## 函数成员：方法Method

#### 认识方法

- NSLog就是一种全局函数，这样的全局函数形式可以在类的头文件里面（类外）定义，在类的实现文件里面实现（C风格），但是这样的全局函数在面向对象里面使用的很少，现在都用成员函数（也叫做方法）

- ```
  在OC中，方法分为类方法和实例方法。

  前置加号（+）的方法为类方法，这类方法是可以直接用类名来调用的，它的作用主要是创建一个实例。有人把它称为创建实例的工厂方法。（+ 和java中的static 方法相似）

  前置减号（-）的方法为实例方法，必须使用类的实例才可以调用的。
  ```

- `-(void) moveToX:(int)x toY(int)y`

- 所有的方法默认为公有方法，【和java不同】没有private和protected方法（也可以用其他方式实现这种private，比如在实现文件里面放这个方法，但是在声明里面不写这个方法，那么类外要通过接口（声明）文件调用的时候就找不到这个方法，就私有化了）

- 动态消息分发：方法调用通过运行时动态消息分发实现，在对象上调用方法又称“向对象发送消息”

- [p1 moveToX:100 toY:200];

#### 实例方法或类型方法

- 实例方法——表达实例行为，可以访问：
  - 实例成员（实例属性`self.x  self.y`、实例变量`_x++;`、实例方法`[self print]`）
  - 类型方法、静态变量
- 类方法——表达类型行为，访问权限：（java里面也是这样）
  - 可以访问：类型方法，静态变量
  - 不能方法：实例成员（实例属性、实例变量、实例方法）
- 了解编译器背后对实例方法和类方法的不同处理：self指针
  - 类方法里面的self指的是类，实例方法里面的self指的是当前对象

#### 方法参数

- 如果参数类型为值类型，则为传值类型，如果参数类型为引用类型，则为传指针方式

- 方法可以没有参数，也可以没有返回值

- 如果方法有参数，方法名约定一般包含第一个参数名，从第二个参数开始需要显式提供外部参数名

- 调用时，第一个参数名忽略，但后面的参数名必须显式标明

- ```objective-c
  -(void) moveToX:(int)x toY(int)y {
    self.x = x;
    self.y = y;
  }

  //调用的时候
  [p1 moveToX:100 toY:200];
  ```

- c++、java不支持外部参数名，而Objective-C可以外部参数名不同但是函数名相同而建立两个不同的方法

#### 动态方法调用机制——消息分发表

**id类型**：可以指代任何类型，比如设计一个类的delegate，你设计的时候根本无法确定什么对象来做你的delegate，于是可以用id，表示任何对象都欢迎，作用等同与NSObject *，也就是说id相当于对象指针，id a; 等同于NSObject *b;

 调用方法的时候，是发送消息给对象，通过对象找到methodLists，然后在方法表里面找到对应的调用的方法。除了和c语言一样的那种函数，其他所有方法的调用都是通过这种消息分发表的形式，这给Objective-C的性能带来一定的负担（C++里面是有的可以走消息分发表（虚表），有的不走这种表，swift也是）

这种消息分发表的形式可以带来灵活性，可以在运行时添加方法

## 初始化器和析构器

- 初始化器用于初始化对象实例或者类型，是一个特殊的函数
  - 对象初始化器：-(id) init 可以重载多个
  - 类型初始化器：+(void)initialize 只能有一个
- 析构器用于释放对象拥有的资源，无返回值的函数
  - 对象析构器：-(void)dealloc 只能有一个
  - 没有类型析构器

#### 对象初始化器

- 初始化对象实例时，init通常和alloc搭配使用

- alloc所做的事情——NSObject已实现，不需要自己定义：

  - 1. 在堆上分配合适大小的内存
    2. 将属性或者实例变量的内存置为0

- init所做的事情——可以编译器生成也可以自定义：

  - 1. 调用父类初始化器[super init]（前置调用）
    2. 初始化当前对象实例变量（注意使用实例变量，不要使用属性）

- new相当于调用alloc/init的无参数版本

- 对于多个初始化方法，找参数最多的那个初始化器进行真正的初始化（指定初始化器），其他的初始化只需要调用这个方法就可以了（辅助初始化器，便捷初始化器）

- ```c++
  Book *b1 - [[Book alloc] init];
  Book *b2 - [Book new];
  //这两句达到的效果是相同的
  ```

#### 类初始化器（用的较少）

- 类初始化器initialize负责类型级别的初始化

- initialize在每个类使用之前被系统自动调用，且每个进程周期中，只被调用一次

- 子类的initialize会自动调用父类的initialize（前置调用）

- ```c++
  +(void)initialize {
    if(selft == [Book class]) {
      
    }
  }
  ```

#### 对象析构器

- 对象析构器dealloc负责释放对象拥有的动态资源

  - 自动实现：ARC将对象属性引用计数减持
  - 自动实现：释放不受ARC管理的动态内存，如malloc分配的内存
  - 手动实现：关闭非内存资源，如文件句柄，网络端口

- ```
  句柄是系统分配给你操作文件的权限,你操作所有的文件都需要用到系统分配给你的句柄
  ```

- dealloc由ARC根据对象引用计数规则，在释放对象内存前自动调用，**无法手工调用**

- 子类的dealloc会自动调用父类的delloc（后置调用）

## 继承

- 封装 encapsulation
  - 隐藏对象内部实现细节，对外仅提供公共接口访问
- 继承 inheritance
  - 一个类型在另外类型基础上进行的扩展实现
- 多态 polymorphism
  - 不同类型针对统一行为接口的不同实现方式
- 继承：Objective-C是单继承，一个类只能有一个基类。
- 继承了以下内容：
  - 实例变量
  - 属性
  - 实例方法
  - 类方法
- 所有类的根类：NSObject

```objective-c
@interface Shape : NSObject {
  
}
```

- 继承的两层含义：

  - 成员复用：子类复用基类成员（私有共有的成员都是可以被继承的，只是子类访问不到）
  - 类型抽象：将子类当做父类对象使用（IS-A关系准则）

- 继承中的init和dealloc

  - 初始化器init

    - 子类自动继承基类的初始化器
    - 子类也可以重写基类的初始化器，此时子类初始化器必须首先调用基类的一个初始化器（手工调用，必须放在最前面）

    ```objective-c
    -(id)init {
      self = [super init];
      if(self) {
        _length = 10;
        _width = 20;
      }
      return self;
    }
    ```

  - 析构器 dealloc

    - 子类可以选择继承基类析构器，或者重写基类析构器
    - 子类析构器执行完毕后，会自动调用基类析构器（后置调用，且不支持手工调用）
    - 子类析构器自动具有多态性

  - Tips：尽量避免在父类init和dealloc中调用子类重写的方法

  要不然还没有初始化完成，就调用方法，会导致错误的

## 多态

#### 运行时多态

- 多态：子类在父类统一行为接口下，表现不同的实现方式

- 对比重写（改写、覆盖）override和重载overload：

  - 子类重写父类同名同参数方法：子类只可以重写父类方法

    - 父类里面的self，到了子类里面，self就是指子类本身了
    - 不管声明的是父类还是子类，指向的是谁就调用谁的方法，Shape是声明类型（编译类型），Rectangle是实际类型（运行时类型），不关注你的声明类型是什么，只专注你的实际类型——`Shape *rect = [[Rectangle alloc]init];`

  - 方法名相同、参数不同：OC不支持方法的重载

    - 在Objective-C里面，参数外部名是方法名的一部分

    - ```objective-c
      -(void)moveToX: (int) x toY:(int)y;
      -(void)moveToX: (int) x toZ:(int)z;// 这个定义和上一个不同，因为第二个参数的外部名不同，外部名是方法名的一部分
      -(void)moveToX: (double) x toY:(double)y;// 不可以，这个与第1个是相同的，不支持方法名相同参数不同的所谓的重载
      ```

- 在子类的代码中，可以使用super来调用基类的实现

  - self具有多态性，可以指向不同子类
  - super没有多态性，仅指向当前父类

## 字符串处理

#### 认识字符串NSString

- NSString是一个Unicode编码、16位字符的字符序列

- NSString被定义为类，引用类型，拷贝时具有引用语义

- 初始化方法：字面量初始化、初始化器、工厂方法

- NSString拥有恒定性，所有的操作无法更改字符串本身，如有更改，都是返回新值的形式

  ```objective-c
  str1 = [str1 stringByAppendingString:@" Yes!"];
  // 如果不加前面的str1 =，是不会更改str1的
  ```

- NNString拥有共享机制，引用计数管理对其有特殊的管理规则

```objective-c
// 字符串替换
NSRange stringRange = NSMakeRange(12, 4);
str1 = [str1 stringByReplacingCharactersInRange: stringRange withString:@"Good"];
```

```objective-c
[str1 isEqualToString:str2]  // 值相等(用的比较多)
str1 == str2 // 引用相等
```

#### NSMutableString

- 每一次对于NSString的修改都是返回新值的形式所花的代价太高了，所以产生了NSMutableString
- NSMutableString具有可变性，NSString具有恒定性
- NSMutableString为NSString的子类
- NSMutableString不具有共享机制，NSString具有共享机制
- NSMutableString并不是在原有内存上直接增长，而是重新分配一个更大或者更小的缓存容量存放字符

##### 缓存容量与增长

- 字符串初始化后，会分配一个缓存容量capacity，其长度一般大于实际字符数量
- 也可以自己指定capacity

```objective-c
NSMutableString *mustr1 = [NSMutableString stringWithCapacity: 100];
```

- 当字符串增长时，如果实际需求大于capacity，其capacity会以二倍的方式指数增长，伴随的代价：
  - 分配新的堆内存 2 * capacity
  - 将原来堆内存上的内容拷贝到新的内存
  - 释放原来堆内存
- 最佳实践：估计好capacity，预先分配好一定容量，避免以后capacity的增长

#### NSString常用操作

- NSString：

  - 访问字符串：

    - 获取字符串字符

    ```objective-c
    for(int i = 0; i < [str length]; i++) {
      NSLog(@"%c", [str characterAtIndex: i]);
    }
    ```

    - 字符串长度

      `sizeof(str)`获取字符串指针的长度

        `str.length`获取字符串的字符长度

    - 字面量

    - 大小写转换

    ```objective-c
    str1 = str1.uppercaseString;
    str1 = str1.lowercaseString;
    str1 = str1.capitalizedString;
    ```

  - 查询字符串：

    - 定位子串

    ```objective-c
    NSRange range = [str1 rangeOfString:@"Hello"];
    range.location
    range.length
    ```

    - 获取子串

    ```objective-c
    NSString *substr = [str1 substringFromIndex: 6];
    ```

    - 是否包含子串

    ```objective-c
    BOOL yOrN = [str1 hasPrefix:@"Hello"];
    ```

    - 查询字符集

  - 其他操作：

    ```objective-c
    NSString *format = [NSString stringWithFormat:@"[%d, %d]", 100, 200];
    ```

    - 比较字符串
    - 替换字符串
    - 分解字符串

- NSMutableString：

  - 添加字符串

  ```objective-c
  NSMutableStrng *mustr3 = [NSMutableString stringWithCapacity:100];
  [mustr3 appendString:@"Hello Objective"];
  [mustr3 insertString:@"-c" atIndex:mustr3.length];
  ```

  - 删除字符串
  - 修改字符串

## 集合类型

- 集合类型一共有三种：数组、集合、字典（键值对map）

#### 认识数组

- 数组是一个有序的元素序列，支持随机存取。索引从0开始，索引访问越界会抛出运行时异常。这和c语言不同。
- NSArray被定义为class，引用类型，拷贝时具有引用语义
- NSArray的元素必须是对象，即NSObject的子类：
  - 如果为基本数据类型，须用NSNumber封装为对象类型后，才能放入数组中。
  - 如果为C语言结构类型，须用NSValue封装为对象类型后，才能放入数组中。
  - 数组元素可以是不同对象类型，可能会有类型不安全。
- NSArray具有常量性：长度和元素指针都不能更改。但指针指向的对象内部可以更改。

##### 常用操作

- 数组遍历
  - 最快——Fast Enumeration，直接访问内存，优化索引检查，快5-10倍
  - 较慢——NSEnumerator遍历：索引检查+动态消息调用
  - 最慢——For循环访问：索引检查+动态消息调用
- 数组查找
  - indexOfObject查找是否存在“值相等”的对象（类型需要实现isEqual）
  - indexOfObjectIdenticalTo 查找是否存在指针相等的对象
- 数组排序
  - 不改变原数组（常量性），返回新数组

#### 使用NSMutableArray

- NSMutableArray支持更改数组长度和元素指针，为NSArray的子类
- NSMutableArray初始化后，会分配一个缓存容量capacity，一般大于实际元素数量，当长度增长时，如实际需求大于capacity，其capacity会以近似二倍的方式指数增长。伴随代价：
  - 分配新的堆内存2*capacity
  - 将原来堆内存上的元素拷贝到新内存
  - 释放原来的堆内存
- 最佳实践：估计好capacity，预先分配一定容量，避免以后增长
- 尽量避免使用insertObject: atIndex: 和 removeObjectAtIndex: 等操作，因为会改变数组元素序列，设计大量内存拷贝操作，代价高

#### 认识Set

- NSSet是一个无序的集合，其存储的对象不能重复
- NSSet被定义为class，引用类型，拷贝时具有引用语义
- 常量集合NSSet，可变集合：NSMutableSet:
  - 常量性：长度和元素指针都不能更改，但是指针指向的对象内部可以更改
  - 创建NSMutableSet时用initWithCapacity提前设置capacity
- 支持Fast Enumeration和NSEnumerator遍历，前者较快

#### 认识Dictionary

- NSDictionary是一个存储key-value的无序集合，key唯一，value可重复
- NSDictionary被定义为class，引用类型，拷贝时具有引用语义
- 常量字典NSDictionary，可变字典：NSMutableDictionary
  - 常量性：长度和元素指针都不能更改，但是指针指向的对象内部可以更改
  - 创建NSMutableDictionary时用initWIthCapacity提前设置capacity
- 支持Fast Enumeration和NSEnumerator遍历，前者较快

```objective-c
NSDictionary *dictionary1 = @{
  @"shanghai": p1,
  @"Beijing": p2,
  @"New York": p3,
  @"Paris": p4
};
```

## 自动引用计数ARC

#### 了解ARC

- 自动引用计数（Automatic Reference Counting）是Objective-C默认的内存管理机制，其针对堆上的对象，由编译器自动生成操作引用技术的指令（retain和release），来管理对象的创建和释放
- 那些对象受ARC管理：
  - OC对象指针
  - Block指针
  - 使用`_attribute_((NSObject))`定义的typedef
- 哪些对象不受ARC管理：
  - 值类型（简单值类型，C语言struct）
  - 使用其他方式分配的堆对象（如使用malloc分配）
  - 非内存资源

#### 引用计数管理

- 新创建（使用alloc，new，copy等）一个引用类型对象，引用计数为1
- 对象引用计数增1——retain操作：
  - 将对象引用赋值给其他变量或者常量
  - 将对象引用赋值给其他属性或实例变量
  - 将对象传递给函数参数，或者返回值
  - 将对象加入集合中
- 对象引用计数减1——release操作：
  - 将局部变量或者全局变量赋值为nil或其他值
  - 将属性赋值为nil或者其他值
  - 实例属性所在的对象被释放
  - 参数或局部变量离开函数
  - 将对象从集合中删除
- 引用计数变为0时，内存自动被释放

#### 自动释放池（Autorelease Pool）

- release会导致对象立即释放。如果频繁堆对象进行release，可能会造成琐碎的内存管理负担。autorelease可以将release的调用延迟到自动释放池被释放时。
- 推荐使用自动释放池（Autorelease Pool）Block，当其结束时，所有接收autorelease消息的对象将会被立即释放（即发送release消息）
- AppKit和UIKit框架在处理每一个事件循环迭代时，都会将其放入一个Autorelease Pool中。大多数情况，无需程序员干预。

#### 什么时候需要手动管理Autorelease Pool

- 编写的程序不基于UI框架，如命令行程序
- 在循环中创建大量临时对象，需要更早地释放，避免临时对象聚集导致内存峰值过大
- 在主线程之外创建新的线程，在新线程开始执行处，需要创建自己的Autorelease Pool
- 可以嵌套使用Autorelease Pool

## 类型合同：协议

### 认识协议Protocol

- 协议：类型的合同约定，只描述外部接口，不提供具体实现
- 协议可以包含以下成员：
  - 属性
  - 实例方法
  - 类方法
  - 初始化器——不常用
  - 析构器——不常用
- 协议中无法包含实例变量成员
- 协议中定义的属性本质上是访问起方法，编译器不会自动合成实例变量

#### 使用协议

- 一个类遵守协议，需要实现协议约定的所有@required成员（默认都是@required，还可以自己手动加@optional）
  - 协议中的属性必须在实现类的.h文件中声明（需要编译器合成getter和setter访问器方法以及实例变量，一般情况下在.h文件中写一遍的，主要为了那个实例变量）

```objective-c
@interface BLNPoint : NSObject<Drawable>
  
@property NSInteger x;
@property NSInteger y;

@end
```

- 注意编译器警告信息：
  - 遵守协议后却没有没有实现必选协议方法时，会出现警告提示（java C#都会出现报错，因为oc支持运行时添加对象）
  - 协议类型变量被赋值非协议类型对象时，会出现警告提示
- 协议本质是一种类型，可以作为声明类型，但不能创建实例（只能创建类的实例，不能创建协议的实例）

```objective-c
id<Drawable> obj;
```

- 检查协议类型

  - 使用conforms ToProtocol：检查对象是否实现了协议

  ```objective-c
  if([obj conformsToProtocol:@protocol(AProtocol)]) {
    [obj methodA];
  }
  ```

#### 更多协议形式

- 协议继承
  - 一个协议可以继承一个或多个协议
  - 实现子协议的类型，也必须实现父协议中约定的成员
- 协议组合
  - 可以使用`protocol<A, B, …>`来组合多个协议
  - 实现组合协议的类型，必须实现组合协议中的每一个协议
- 可选协议
  - 协议的某些成员可以定义为optional，不必实现

#### 了解常用协议

- NSObject：（也有类的NSObject，也有协议的NSObject），包括对象的常用操作，相等、字符串表示、哈希
- NSCopying：支持复制的类型必须遵守该协议
- NSMutableCopying：在NSCopying协议的基础上，支持复制数据的可变性
- NSFastEnumeration：实现快速枚举for-in的类型采用
- NSCoding协议：支持将对象图进行编码/解码

## 类别与扩展

#### 类别Category

- 类别支持在没有源代码的情况下，基于某些特定场合，为一个类增加功能

- 可以添加：

  - 类方法
  - 实例方法
  - 重写基类方法

- 不能添加：

  - 属性（运行时会报错）
  - 实例变量（编译会报错，实质上这是改变了类的内存模型，内存模型是不能被改变的）
  - 已存在的同名方法（虽然在编译或者运行的时候是不会报错，但是是没有价值的也是不允许的）

- 命名规范（虽然不是强制，但是按照这种约定，能一眼看出来就是谁的类别）

  - 文件名：类名+扩展方法，如：NSString+Drawing.h/.m（要定义头文件和实现文件）

  ```objective-c
  // 文件名：BLNPoint+Drawing.h
  #import <Foundation/Foundation.h>
  #import "BLPoint.h"

  @interface BLNPoint(Drawing)
  -(void)draw;
  -(void)setWeight:(NSInteger)weight;
  -(NSInteger)weight;

  @end
  ```

  也可以扩展系统自己的类。在我们自己用的时候给系统定义的类加点功能

  ```objective-c
  // 文件名：NSString+Drawing.h
  #import <Foundation/Foundation.h>

  @interface NSString(Drawing)
  -void(draw);
  +(NSString*) convertToString:(NSInteger)number;

  @end
  ```

  - 然后在对应的.m文件里面实现它
  - 使用的时候：
  - 1.包含类别的头文件 `#import <BLNPoint+Drawing.h>`
  - 2.直接使用原BLPoint创建对象point，point可以直接使用在类别里面定义的方法。[point draw];

#### 使用类别

- 使用场景
  - 适用在没有源代码的情况下，向已经封装的类中添加方法
  - 为一个类在某些特殊场景下增加功能
  - 对于复杂的大型文件分割实现
- 添加类别
  - 自己创建的类
  - 系统的类
  - 第三方库

#### 扩展 Extension

- 扩展支持在编译时、有类的源代码的前提下，向类添加功能。可以将扩展看作匿名的类别

```objective-c
// 在Circle.m文件内
@interface Circle() {
  NSString *_name;
}
@property (readwrite)NSInteger radius;//改写属性的读写属性(读写属性只能增加，不能减少)
@property NSInteger center;
-(float)getDiameter;
+(void)process:(Circle*) circle;
@end
  
@implementation Circle
// ... 实现Circle.h的声明，外加上面的那些扩展的声明
@end
```

- 接口定义在.m文件中@implementation前声明，实现代码仍在@implementation内实现
- 扩展支持添加以下成员
  - 属性（事实上可以添加属性就可以添加实例成员）
  - 实例成员
  - 类方法
  - 实例方法
  - 改写属性的读写属性
- 扩展实现的成员都只能在.m实现文件内部访问，在类外不可以直接访问
- 扩展的主要用途在于信息隐藏，隐藏一些外部无需访问，而内部实现又需要使用的属性、方法：
  - 类的主接口主要用于对类外公开的接口
  - 类的扩展接口用于对类内可见的接口，扩展相当于是类的私有成员

#### 类别与扩展的区别

- 类别是对外的，扩展是对内的
- 类别只能添加方法，不能加属性和实例变量，因为这样会改变类的内存模型，扩展什么都可以加，可以改变一个类的内存模型的，它相当于实现类的时候的一个小技巧，相当于类的信息隐藏功能