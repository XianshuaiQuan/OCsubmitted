//
//  main.m
//  NSString
//
//  Created by 全先帅 on 2020/11/20.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString* str=@"Hello Objective-C";
        NSString* str1=[NSString stringWithFormat:@"your height id %d feet,%d inches",5,11];
        
        //-(NSUInteger) length;
        NSUInteger len=[str length];
        NSUInteger len1=[str1 length];
        
        if(len>len1)
            NSLog(@"The length of str is %tu,len is bigger!",len);//输出NSUInteger 用%tu   //输出UNInteger 用%zd
        else
            NSLog(@"The length of str1 is %tu,len is Smaller!",len1);
        
        //-(BOOL) isEqualToString: (NSString*) aString;
        BOOL isEqual=[str isEqualToString:str1];
        if(isEqual==YES)
            NSLog(@"They are equal!");
        else
            NSLog(@"They are not equal!");
            
    
        /*
            -(NSComparisonResult) compare: (NSString*) aString;
            将接收对象和传递过来的字符串逐个比较 返回一个enum显示比较结果
         enum
         {
            NSOrderedAscending = -1,//升序
            NSOrderedSame,
            NSDescending//降序
         };
         typedef NSInteger NSComparisionResult;
         
        */
        
        NSComparisonResult cp=[@"Bork" compare:@"bork"];//compare方法区分大小写
        NSLog(@"%zd",cp);//cp=-1,表示降序
        
        //不区分大小写的比较：
        //-（NSComparisionResult）compare: (NSString*) aString options:(NSStringCompareOption) mask;
        //option:NSCaseInsensitiveSearch(不区分大小写)；NSLiteralSearch(区分大小写)；NSNumericSearch(比较字符串个数)
        
        NSString* str2=@"100";
        NSString* str3=@"101";
        
        if([str2 compare:str3 options:NSCaseInsensitiveSearch]==0)
            NSLog(@"不区分大小写比较:相等");
        else if([str2 compare:str3 options:NSCaseInsensitiveSearch]==-1)
            NSLog(@"不区分大小写比较:升序");
        else if([str2 compare:str3 options:NSCaseInsensitiveSearch]==1)
            NSLog(@"不区分大小写比较:降序");
        
        if([str2 compare:str3 options:NSLiteralSearch]==0)
            NSLog(@"区分大小写比较:相等");
        else if([str2 compare:str3 options:NSLiteralSearch]==-1)
            NSLog(@"区分大小写比较:升序");
        else if([str2 compare:str3 options:NSLiteralSearch]==1)
            NSLog(@"区分大小写比较:降序");
            
        /*
         //字符串包含
         1、以某个字符串开头：-（BOOL) hasPrefix: (NSString*) aString;
         2、以某个字符串结尾: -(BOOL) hasSuffix: (NSString*) aString;
         3、是否包含其他字符串:-(NSRange) rangeOfString: (NSString*) aString;
         
        */
        
        NSString *fileName=@"draft-chapter.pages";
        if([fileName hasPrefix:@"draft"])
        {
            NSLog(@"it begins with draft.");
        }
        else
        {
            NSLog(@"it donesn't begin with draft.");
        }
        
        if([fileName hasSuffix:@".pages"])
        {
            NSLog(@"it ends with pages.");
        }
        else
        {
            NSLog(@"it dones't end with pages");
        }
        
        NSRange range=[fileName rangeOfString:@"chapter"];
        
        NSLog(@"The loaction at %zd, length is %zd",range.location,range.length);
        
    }
    return 0;
}
