//
//  AllWeatherRadial.m
//  CarParts-Copy
//
//  Created by 全先帅 on 2020/12/15.
//

#import "AllWeatherRadial.h"

@implementation AllWeatherRadial

-(instancetype)initWithPressure:(float)p treadDepth:(float)td
{
    if(self=[super initWithPressure:p treadDepth:td])
    {
        self.rainHandling=23.5;
        self.snowHandling=42.3;
    }
    return self;
}

-(NSString*) description
{
    NSString *str=[NSString stringWithFormat:@"AllWeatherRadial:%.1f,%.1f,%.1f,%.1f",self.rainHandling,self.snowHandling,self.pressure,self.treadDepth];
    return str;
}//description

-(id)copyWithZone:(NSZone *)zone
{
    AllWeatherRadial* tmp=[super copyWithZone:zone];
    tmp.rainHandling=self.rainHandling;
    tmp.snowHandling=self.snowHandling;
    return tmp;
}//copyWithZone

@end
