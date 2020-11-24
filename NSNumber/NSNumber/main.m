//
//  main.m
//  NSNumber
//
//  Created by 全先帅 on 2020/11/23.
//

#import <Foundation/Foundation.h>

//NSNumber
void test01()
{
    NSNumber* num1=@'X';
    NSNumber* num2=@123;
    NSNumber* num3=@2.3;
    NSNumber* num4=@123.456f;
    NSNumber* num5=@YES;
    
    NSArray* array=@[num1,num2,num3,num4,num5];
    NSDictionary* dic=@{@1:num1,@2:num2,@3:num3};
    
    int a=[num2 intValue];
}

//NSValue,封装任意值
void test02()
{
    NSRect rect=NSMakeRect(1, 2,10, 20);
    NSValue* val=[NSValue valueWithBytes:&rect  objCType:@encode(NSRect)];
    [val getValue:&rect];
    
    val=[NSValue valueWithRect:rect];
    NSRect rec=[val rectValue];
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
