//
//  AllWeatherRadial.m
//  CarProperties
//
//  Created by 全先帅 on 2020/12/1.
//

#import "AllWeatherRadial.h"

@implementation AllWeatherRadial

@synthesize rainHandling;
@synthesize snowHandling;

-(id) initWithPressure:(float)p treadDepth:(float)td
{
    if(self=[super initWithPressure:p treadDepth:td])
    {
        rainHandling=23.7;
        snowHandling=42.5;
    }
    return self;
}

-(NSString*) description
{
    NSString* str;
    str=[NSString stringWithFormat:@"AllWeatherRadial类，pressure=%.1f,treadDepth=%.1f,rainHandling=%.1f,snowHandling=%.1f",self.pressure,self.treadDepth,self.rainHandling,self.snowHandling];
    return str;
}
@end
