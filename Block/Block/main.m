//
//  main.m
//  Block
//
//  Created by 全先帅 on 2020/12/16.
//

#import <Foundation/Foundation.h>
typedef int(^myBlock) (int num1,int num2);

typedef double(^doubleBlock) (void);
static double a=10,b=20;

void test1()
{
    int (^myblock) (int num) = ^(int num){
        return num*num;
    };
    int res=myblock(5);
    NSLog(@"res=%d",res);
}

void test2()
{
    myBlock num=^(int num1,int num2){
        return num1+num2;
    };
    NSLog(@"%d",num(12,15));
}

void test3()
{
    NSArray*array=[NSArray arrayWithObjects:@"jack",@"mark",@"jan",@"sunday", nil];
    NSLog(@"UNsorted array:%@",array);
    
    NSArray*sortedArray=[array sortedArrayUsingComparator:^(NSString* obj1,NSString* obj2){
        return [obj1 compare:obj2];
    }];
    NSLog(@"sortedArray:%@",sortedArray);
}

void test4()
{
    doubleBlock d=^(void){
        return a*b;
    };
    NSLog(@"%f",d());
    
    a=5;
    b=5;
    NSLog(@"%f",d());
    
}



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        test1();
        test2();
        test3();
        test4();
    }
    return 0;
}
