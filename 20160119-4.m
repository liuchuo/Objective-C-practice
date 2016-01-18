//19.3 编码方法和解码方法
归档：encodeWithCoder: initWithCoder:
解码：decodeObject:forKey:

//使用NSData创建自定义档案
initForWritingWithMutableData:
encodeObject:forKey:
[dataArea writeToFile: @"myArchive" atomically: YES]

//19.4 使用归档程序复制对象
可以使用 Foundation 的归档功能来创建对象的深复制
通过 dataArray 归档到一个缓冲区，然后把它解归档，将结果指派给 dataArray2，从而将 dataArray 复制给 dataArray2
对于这个过程，不需要使用文件，归档和解归档过程都可以在内存中发生。

