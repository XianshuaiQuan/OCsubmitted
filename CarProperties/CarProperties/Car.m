//
//  Car.m
//  CarProperties
//
//  Created by 全先帅 on 2020/12/1.
//

#import "Car.h"


@implementation Car
{
    NSMutableArray* tires;
}

@synthesize name=appellication;
@synthesize engine;

-(id) init
{
    if(self=[super init])
    {
        self.name=@"Car";
        tires=[[NSMutableArray alloc]init];
        
        for(int i=0;i<4;i++)
        {
            [tires addObject: [NSNull null]];
        }
    }
    return self;
}

-(void) setTire:(Tire*) tire atIndex:(int) index
{
    [tires replaceObjectAtIndex:index withObject:tire];
}

-(Tire*) tireAtIndex:(int)index
{
    Tire* tire=[tires objectAtIndex:index];
    return tire;
}

- (void) print
{
    NSLog (@"%@ has:", self.name);
    
    for (int i = 0; i < 4; i++)
    {
        NSLog (@"%@", [self tireAtIndex: i]);
    }

    NSLog (@"%@", engine);

}

@end
