//
//  Tire.m
//  CarPartsInit-ARC
//
//  Created by 全先帅 on 2020/11/26.
//

#import "Tire.h"

@implementation Tire

-(id)init
{
    if(self=[self initWithPressure:34 treadDepth:20])
    {
    }
    return self;
}

- (id) initWithPressure:(float) pressure
{
    if(self=[self initWithPressure:pressure treadDepth:30.4])
    {
        
    }
    return self;
}

- (id) initWithTreadDepth:(float) depth
{
    if(self=[self initWithPressure:20.0 treadDepth:depth])
    {
        
    }
    return self;
}

- (id) initWithPressure:(float)pressure treadDepth:(float)depth
{
    if(self=[super init])
    {
        _pressure=pressure;
        _treadDepth=depth;
    }
    return self;
}

-(void)setPressure:(float)pressure
{
    _pressure=pressure;
}
-(float)pressure
{
    return _pressure;
}

-(void)setTreadDepth:(float)depth
{
    _treadDepth=depth;
}
-(float)treadDepth
{
    return _treadDepth;
}

-(NSString*)description
{
    NSString* desc=[NSString stringWithFormat:@"Tire's pressure :%1f, treadDepth: %1f",_pressure,_treadDepth];
    return desc;
}

@end
