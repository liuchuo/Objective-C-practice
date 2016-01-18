//15.4词典对象
NSMutableDictionary *glossary = [NSMutableDictionary dictionary];
[glossary setObject: @"A class defined so other classes can inherit form it"
        forKey: @"abstract class"];
NSLog(@"abstract class: %@", [glossary objectForKey: @"abstract class"]);
也可以
glossary[@"abstract class"] = @"A class defined so other classes can inherit from it";
NSLog(@"abstract class: %@", glossary[@"abstract class"]);

NSDictionary NSMutableDictionary
