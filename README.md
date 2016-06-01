# SZYKeychain_Demo
利用Keychain保存敏感信息

如何使用？

第一步：下载后将『SZYKeychain.h』、『SZYKeychain.m』两个文件导入项目。

第二步：定义几个Key
```
static NSString *const kSZYKeyChain_USERNAME_PASSWORD = @"cc.suzhenyu.usernamepassword";
static NSString *const kSZYKeyChain_USERNAME = @"cc.suzhenyu.username";
static NSString *const kSZYKeyChain_PASSWORD = @"cc.suzhenyu.password";
```

第三步：
  存：
```
NSMutableDictionary *dataDict = [[NSMutableDictionary alloc] init];
[dataDict setObject:@"root" forKey:kSZYKeyChain_USERNAME];
[dataDict setObject:@"123456" forKey:kSZYKeyChain_PASSWORD];
[SZYKeychain saveKeychain:kSZYKeyChain_USERNAME_PASSWORD withData:dataDict];
```
  取：
```
NSMutableDictionary *dataDict = (NSMutableDictionary *)[SZYKeychain loadKeychain:kSZYKeyChain_USERNAME_PASSWORD];
NSLog(@"username:%@,password:%@",[dataDict objectForKey:kSZYKeyChain_USERNAME],[dataDict objectForKey:kSZYKeyChain_PASSWORD]);
```
  删：
```
[SZYKeychain deleteKeyChain:kSZYKeyChain_USERNAME_PASSWORD];
```
