//
//  AllWeatherRadial.h
//  CarPartsInit-ARC
//
//  Created by 全先帅 on 2020/11/26.
//

#import <Foundation/Foundation.h>
#import "Tire.h"

NS_ASSUME_NONNULL_BEGIN

@interface AllWeatherRadial : Tire
{
    float _RainHandLing;
    float _SnowHandLing;
}

-(void)setRainHandLing:(float)rain;
-(float)rainHandLing;

-(void)setSnowHandLing:(float)snow;
-(float)snowHandLing;

@end

NS_ASSUME_NONNULL_END
