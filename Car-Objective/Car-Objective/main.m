//
//  main.m
//  Car-Objective
//
//  Created by 全先帅 on 2020/11/17.
//

#import <Foundation/Foundation.h>

#pragma  mark - Tire
@interface Tire  : NSObject
@end//Tire

@implementation Tire
-(NSString *)description//在类中提供description方法，就会自定义NSLog()如何输出对象
{
    return (@"I am a Tire,I last a while. ");
}
@end//description

#pragma  mark - Pedal
@interface Pedal : NSObject
@end//Pedal

@implementation Pedal
-(NSString*)description//
{
    return (@"I am a Pedal,");
}//description
@end//Pedal

#pragma mark - Engine
@interface Engine:NSObject
@end//Engine

@implementation Engine

-(NSString*)description
{
    return (@"I am an engine . Vrooom!");
}//description

@end//Engine

#pragma mark - Car
@interface Car  : NSObject
{
    Engine* engine;
    Tire* tires[4];
}
-(void)print;

@end//Car

@implementation Car

-(id)init//使用new生成对象时，自动调用init方法
{
    if(self=[super init])
    {
        engine=[Engine new];
        tires[0]=[Tire new];
        tires[1]=[Tire new];
        tires[2]=[Tire new];
        tires[3]=[Tire new];
    }
    return self;
}//init

-(void)print
{
    NSLog (@"%@",engine);
    NSLog (@"%@",tires[0]);
    NSLog (@"%@",tires[1]);
    NSLog (@"%@",tires[2]);
    NSLog (@"%@",tires[3]);
}//print

@end//Car


#pragma mark - main
int main(int argc, const char * argv[]) {
    Car* car=[Car new];
    [car print];
    return 0;
}
