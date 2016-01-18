//第19章 归档
归档是一个过程，即用某种格式来保存一个或多个对象，以便以后还原这些对象
两种归档数据的方法：属性列表和带键值的编码
//19.1 使用XML属性列表进行归档
如果你的对象是 NSString、NSDictionary、NSArray、NSData 或 NSNumber 类型
你可以使用这些类中实现的 writeToFile:atomically:方法将数据写到文件中
就像这样就好：
[glossary writeToFile: @"glossary" atomically: YES];
writeToFile:atomically:消息被发送给字典对象glossary，使字典以属性列表的形式写到文件glossary中


若要将文件中的XML属性列表读入你的程序，使用 dictionaryWithContentsOfFile: 或者 arrayWithContentsOfFile: 方法
要读取数据 使用 dataWithContentsOfFile: 方法 要读取字符串对象，使用 stringWithContentsOfFile: 方法
就像这样就好：
glossary = [NSDictionary dictionaryWithContentsOfFile: @"glossary"];
