//
//  main.m
//  CarPart-Accessors
//
//  Created by 全先帅 on 2020/11/17.
//

#import <Foundation/Foundation.h>

#pragma mark - Tire

@interface Tire  : NSObject

@end//Tire

@implementation Tire

-(NSString *)description
{
    return (@"I am a tire!");
}//description

@end

#pragma mark - Engine

@interface Engine  : NSObject

@end

@implementation Engine

-(NSString*)description
{
    return (@"I am an Engine!");
}

@end

#pragma mark - Car

@interface Car  : NSObject
{
    Engine* engine;
    Tire* tires[4];
}
//设置setter，getter方法，注意命名规则：set作为前缀，get不要作为前缀
-(Engine*)engine;
-(void)setEngine:(Engine*)newEngine;
-(Tire*)tireIndex:(int)index;
-(void)setTire:(Tire*)tire atIndex:(int)index;
-(void)print;

@end//Car

@implementation Car

-(Engine*)engine
{
    return engine;
}//engine
-(void)setEngine:(Engine *)newEngine
{
    engine=newEngine;
}//setEngine
-(void )setTire:(Tire*)tire atIndex:(int)index;
{
    if(index<0 || index>3)
    {
        NSLog(@"bad index (%d) in setTire:atIndex",index);
        exit(1);
    }
    tires[index]=tire;
}//setTire:atIndex
-(Tire*)tireIndex:(int)index
{
    if(index<0 || index>3)
    {
        NSLog(@"bad index (%d) in setTire:atIndex",index);
        exit(1);
    }
    return (tires[index]);
}//tireAtIndex
-(void)print
{
    NSLog(@"%@",engine);
    NSLog(@"%@",tires[0]);
    NSLog(@"%@",tires[1]);
    NSLog(@"%@",tires[2]);
    NSLog(@"%@",tires[3]);
}//print

@end//Car

#pragma mark - main

int main(int argc, const char * argv[]) {
    Car* car=[Car new];
    Engine* engine=[Engine new];
    [car setEngine:engine];
    for(int i=0;i<4;i++)
    {
        Tire* tire=[Tire new];
        [car setTire:tire atIndex:i];
    }
    [car print];
   
    return 0;
}
