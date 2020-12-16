//
//  Tire.m
//  CarParts-Copy
//
//  Created by 全先帅 on 2020/12/15.
//

#import "Tire.h"

@implementation Tire

-(instancetype)init
{
    if(self=[self initWithPressure:34 treadDepth:27])
    {
    }
    return self;
}//init

-(instancetype)initWithPressure:(float)pressure treadDepth:(float)treadDepth
{
    if(self=[super init])
    {
        self.pressure=pressure;
        self.treadDepth=treadDepth;
    }
    return self;
}//initWithPressure: treadDepth

-(instancetype)initWithPressure:(float)pressure
{
    if(self=[self initWithPressure:pressure treadDepth:27])
    {
    }
    return self;
}//initWithPressure

-(instancetype)initWithTreadDepth:(float)treadDepth
{
    if(self=[self initWithPressure:34 treadDepth:treadDepth])
    {
    }
    return self;
}//initWithTreadDepth

-(id)copyWithZone:(NSZone *)zone
{
    Tire* newTire=[[[self class]allocWithZone:zone]initWithPressure:_pressure treadDepth:_treadDepth];
    return newTire;
}//copyWithZone

-(NSString*) description
{
    NSString* str=[NSString stringWithFormat:@"Tire:pressure is %.1f, treadDepth is %.1f",self.pressure,self.treadDepth];
    return str;
}//description

@end
