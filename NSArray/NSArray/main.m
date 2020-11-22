//
//  main.m
//  NSArray
//
//  Created by 全先帅 on 2020/11/22.
//

#import <Foundation/Foundation.h>

//NSArray
//1、只能储存OC对象，不能储存基本数据类型，int float enum struct NSArray中的随机指针
//2、不能为空（nil），对象列表以nil结尾
void test01()
{
    NSArray* array=[NSArray arrayWithObjects:@"one",@"two",nil];//nil表示结束标志
    NSArray* array1=@[@"one",@"two"];//采用数组字面量格式，不用加nil结束
    
    NSUInteger count=[array count];
    NSLog(@"array 数组的对象个数为：%zd",count);
    
    id obj=[array objectAtIndex:1];
    NSLog(@"array[1]:%@",obj);
    
    for(NSInteger i=0;i<[array count];i++)
    {
        NSLog(@"index %zd has %@",i,[array1 objectAtIndex:i]);
        //NSLog(@"index %zd has %@",i,array[i]);
    }
}

//NSMutableArray,可变长数组，可以添加和删除数组
void test02()
{
    NSMutableArray* array=[NSMutableArray arrayWithCapacity:11];
    [array addObject:@"one"];
    
    for(NSInteger i=0;i<4;i++)
    {
        [array addObject:@"two"];
    }
    
    [array removeObjectAtIndex:1];
    
    for(NSUInteger i=0;i<4;i++)
    {
        NSLog(@"index %tu has %@",i,array[i]);
    }
}

//快速枚举
void test03()
{
    NSArray* array=@[@"one",@"two",@"three"];
    
    for(NSString *str in array)
    {
        NSLog(@"I have %@",str);
    }
}

@interface Person : NSObject
{
    NSString* name;
    int age;
}
-(void)setName:(NSString*) aString;
-(NSString*)MyName;

-(void)setAge:(int) a;
-(int)MyAge;

-(void)print;
@end

@implementation Person
-(NSString*)description
{
    return [NSString stringWithFormat:@"姓名: %@ 年龄: %d",name,age];
}

-(void)setAge:(int)a
{
    age=a;
}
-(int)MyAge
{
    return age;
}

-(void)setName:(NSString *)aString
{
    name=aString;
}
-(NSString*)MyName
{
    return name;
}

-(void)print
{
    NSLog(@"姓名：%@ ， 年龄：%d .",name,age);
}
@end


//NSDictionary
void test04()
{
    Person* p1=[Person new];
    [p1 setName:@"张三"];
    [p1 setAge:10];
    Person* p2=[Person new];
    [p2 setName:@"李四"];
    [p2 setAge:11];
    Person* p3=[Person new];
    [p3 setName:@"王五"];
    [p3 setAge:12];
    Person* p4=[Person new];
    [p4 setName:@"王二麻子"];
    [p4 setAge:13];
    
    NSDictionary* dic=[NSDictionary dictionaryWithObjectsAndKeys:p1,@"one",p2,@"two",p3,@"three",p4,@"four" ,nil];
    
    NSDictionary* dic1=@{@"one":p1,@"two":p2,@"three":p3,@"four":p4};
    
    [[dic objectForKey:@"two"] print];
    
    [dic1[@"four"] print];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // test01();
        // test02();
        // test03();
        test04();
    }
    return 0;
}
