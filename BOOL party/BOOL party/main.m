//
//  main.m
//  BOOL party
//  Created by 全先帅 on 2020/11/12.
//  returns NO if the two integers have the same value,YES otherwise

#import <Foundation/Foundation.h>

BOOL areIntsDifferent(int a,int b)
{
    if(a==b)
        return(NO);
    else
        return(YES);
}

NSString *boolString(BOOL yesNo)//NSString 相当于 const char*
{
    if(yesNo==NO)
        return @"NO";//@表示字符串是NSString
    else
        return @"YES";
}

void test01()
{
    BOOL areTheyDifferent;
    areTheyDifferent=areIntsDifferent(5,5);
    NSLog(@"%d and %d different? %@",5,5,boolString(areTheyDifferent));//%@表示输出对象
    
    areTheyDifferent=areIntsDifferent(23, 55);
    NSLog(@"are %d and %d different? %@",23,55,boolString(areTheyDifferent));
}


//OC中的BOOL不要与YES直接比较
BOOL areIntsDifferent_faulty(int a,int b)
{
    return (a-b);//这种写法是错误的，错误的认为OC中的非零值等于YES。
}

void test02()//结果是相等，但实际上是不等
{
    if(areIntsDifferent_faulty(23, 5))
        NSLog(@"相等");
    else
        NSLog(@"不等");
            
}

//BOOL与bool的比较
//BOOL是对 signed char 的定义，使用八位的存储空间
/*
 typedef signed char BOOL;
 #define YES      (BOOL) 1
 #define NO       (BOOL) 0
*/

//编译器将BOOL看作八位二进制数，YES/NO值只是在习惯上的一种理解，当将大于一个字节的整型值赋值给BOOL时，只有低位八字节看作是BOOL值


//bool则可以理解为，非零为true，零为false

void test03()
{
    BOOL flag=8960;
    if(flag)
        NSLog(@"YES");
    else
        NSLog(@"NO");//8960的二进制第八位刚好为 0000 0000
}

void test04()
{
    BOOL flag=23;
    BOOL flag2=5;
    NSLog(@"%d",flag);
    NSLog(@"%d",flag2);//输出的不是1,而是5//BOOL的YES只表示1
    
    //因此不能直接将BOOL类型的变量和YES比较。
    
}




int main(int argc, const char * argv[])
{
    test01();
    printf("...............................\n");
    test02();
    NSLog(@".................................");
    test03();
    NSLog(@".................................");
    test04();
    
    return 0;
}





