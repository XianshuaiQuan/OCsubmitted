//
//  Car.m
//  CarParts-Split
//
//  Created by 全先帅 on 2020/11/18.
//

#import "Car.h"
#import "Tire.h"
#import "Engine.h"

@implementation Car
{
    Tire* tires[4];
    Engine* engine;
}

-(void )setEngine:(Engine *)newEngine
{
    engine=newEngine;
}//setEngine

-(Engine*)engine
{
    return engine;
}//Engine

-(void)setTire:(Tire *)tire atIndex:(int)index
{
    if(index<0 || index>3)
    {
        NSLog(@"bad index (%d) in setTire:atIndex.",index);
        exit(1);
    }
    tires[index]=tire;
}//setTire:atIndex

-(Tire*)tireAtIndex:(int)index
{
    if(index<0 || index>3)
    {
        NSLog(@"bad index (%d) in setTire:atIndex.",index);
        exit(1);
    }
    return tires[index];
}//tireAtIndex

-(void)print
{
    NSLog(@"%@",tires[0]);
    NSLog(@"%@",tires[1]);
    NSLog(@"%@",tires[2]);
    NSLog(@"%@",tires[3]);
    NSLog(@"%@",engine);
}//print

@end//Car
