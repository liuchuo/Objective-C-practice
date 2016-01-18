//15.2.4可变字符串
NSMutableString *mstr;
//从不可变字符串创建可变字符串
mstr = [NSMutableString stringWithString: str1];

//插入字符
[mstr insertString: @" mutable" atIndex: 7];

//插入末尾进行有效拼接
[mstr insertString: @" and string B" atIndex: [mstr length]];
或者
[mstr appendString: @" and string C"];

//查找然后将其删除
substr = [mstr rangeOfString: @"string B and "];
if (substr.location != NSNotFound) {
    [mstr deleteCharactersInRange: substr];
}

//替换一些字符
[mstr replaceCharactersInRange: NSMakeRange(8, 8) 
        withString: @"a mutable string"];

//查找和替换
search = @"This is";
replace = @"An example of";

substr = [mstr rangeOfString: search];

if (substr.location != NSNotFound) {
    [mstr replaceCharactersInRange: substr withString: replace];
}

//查找和替换所有的匹配项
search = @"a";
replace ] @"X";
substr = [mstr rangeOfString: search];

while (substr.location != NSNotFound) {
    [mstr replaceCharactersInRange: substr withString: replace];
    substr = [mstr rangeOfString: search];
}