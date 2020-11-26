//
//  Car.m
//  CarPartsInit-ARC
//
//  Created by 全先帅 on 2020/11/26.
//

#import "Car.h"
#import "Tire.h"
#import "Engine.h"

@implementation Car

-(id) init
{
    if(self=[super init])
    {
        _tires=[[NSMutableArray alloc] init];
        for(int i=0;i<4;i++)
        {
            [_tires addObject:[NSNull null]];
        }
    }
    return self;
}

-(void) setEngine:(Engine *)engine
{
    _engine=engine;
}
-(Engine*) engine
{
    return _engine;
}

-(void) setTire:(Tire*) tire atIdex:(int)indx
{
    [_tires replaceObjectAtIndex:indx withObject:tire];
}

-(Tire*) tireAtIndex:(int)index
{
    Tire* tire=[_tires objectAtIndex:index];
    return tire;
}

-(void) print
{
    for(int i=0;i<4;i++)
    {
        NSLog(@"%@",[self tireAtIndex:i]);
    }
    NSLog(@"%@",_engine);
}


@end
