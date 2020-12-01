//
//  Tire.m
//  CarProperties
//
//  Created by 全先帅 on 2020/11/29.
//

#import "Tire.h"

@implementation Tire

@synthesize  pressure;
@synthesize  treadDepth;

-(id) init
{
    if(self=[self initWithPressure:30.0 treadDepth:20.0] )
    {
        
    }
    return self;
}

-(id) initWithPressure:(float)p
{
    if(self=[self initWithPressure:p treadDepth:20.0])
    {

    }
    return self;
}

-(id) initWithTreadDepth:(float)td
{
    if(self=[self initWithPressure:30.0 treadDepth:td])
    {

    }
    return self;
}

//将参数最多的设置为指定的初始化方法，其他初始化方法都调用该方法
-(id) initWithPressure:(float)p treadDepth:(float)td
{
    if(self=[super init])
    {
        pressure=p;
        treadDepth=td;
    }
    return self;
}

-(NSString*) description
{
    NSString* str;
    
    str=[NSString stringWithFormat:@"Tire类，胎压为：%.1f;纹深为：%.1f",pressure,treadDepth];
    return str;
}

@end
