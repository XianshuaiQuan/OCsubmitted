//
//  AllWeatherRadial.m
//  CarPartsInit-ARC
//
//  Created by 全先帅 on 2020/11/26.
//

#import "AllWeatherRadial.h"

@implementation AllWeatherRadial

-(id)initWithPressure:(float)pressure treadDepth:(float)depth
{
    if(self=[super initWithPressure:pressure treadDepth:depth])
    {
        _RainHandLing=23.5;
        _SnowHandLing=43.0;
    }
    return self;
}



-(void)setRainHandLing:(float)rain
{
    _RainHandLing=rain;
}
-(float)rainHandLing
{
    return _RainHandLing;
}

-(void)setSnowHandLing:(float)snow
{
    _SnowHandLing=snow;
}
-(float)snowHandLing
{
    return _SnowHandLing;
}

@end
