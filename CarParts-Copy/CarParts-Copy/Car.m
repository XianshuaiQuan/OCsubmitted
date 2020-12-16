//
//  Car.m
//  CarParts-Copy
//
//  Created by 全先帅 on 2020/12/15.
//

#import "Car.h"


@interface Car ()
{
    NSMutableArray* array;
}

@end

@implementation Car

-(id)init
{
    if(self=[super init])
    {
        self.name=@"Car";
        
        array=[[NSMutableArray alloc]init];
        
        for( NSInteger i=0;i<4;i++)
        {
            [array addObject:[NSNull null]];
        }
    }
    return self;
}//init

-(void)setTire:(Tire *)tire atIndex:(NSInteger)index
{
    [array replaceObjectAtIndex:index withObject:tire];
}//setTire:AtIndex

-(Tire*)tireAtIndex:(NSInteger)index
{
    return [array objectAtIndex:index];
}//tireAtIndex

-(id)copyWithZone:(NSZone *)zone
{
    Car* newCar=[[[self class]allocWithZone:zone]init];
    Engine* engine=[_engine copy];
    
    newCar.name=self.name;
    newCar.engine=engine;
    
    for(NSInteger i=0;i<4;i++)
    {
        Tire* newTire=[[self tireAtIndex:i]copy];
        [newCar setTire:newTire atIndex:i];
    }
    
    return newCar;
}//copyWithZone

-(void) print
{
    NSLog(@"%@ has:",self.name);
    for(NSInteger i=0;i<4;i++)
    {
        NSLog(@"%@",[self tireAtIndex:i]);
    }
    NSLog(@"%@",self.engine);
    
}//print

@end
