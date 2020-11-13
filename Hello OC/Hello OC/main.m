//
//  main.m
//  Hello OC
//
//  Created by 全先帅 on 2020/11/12.
//

#import <Foundation/Foundation.h> //只会被包含一次
//#include<Foundation/Foundation.h>
int main(int argc, const char * argv[])
{
    NSLog(@"Hello, OC!");//增加了时间戳，日期戳，自动换行。
                         //NC前缀为了避免命名冲突（告诉我们来自Cocoa工具包）
                         //@代表NSString,Cocoa中的字符串，集成了大量特性
    //printf("this is C style\n");
    return 0;
}
