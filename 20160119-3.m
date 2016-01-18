

//19.2 使用 NSKeyedArchiver 归档
若要各种类型的对象存储到文件中，而且不仅仅是字符串、数组和字典类型，有一种更灵活的方法，就是利用 NSKeyedArchiver 类创建带键 （keyed）的档案来完成
就像这样就好：
[NSKeyedArchiver archiveRootObject: glossary toFile: @"glossary.archive"];

该代码并不在终端产生任何输出 但是 该代码将字典 glossary 写入文件 glossary.archive 中 可以为该文件指定任何路径名
在本例中 文件被写入当前目录下


通过 NSKeyedUnarchiver 的 unarchiveObjectWithFile: 方法将创建的归档文件读入执行程序中
就像这样就好：
glossary = [NSKeyedUnarchiver unarchiveObjectWithFile:
    @"glossary.archive"];
