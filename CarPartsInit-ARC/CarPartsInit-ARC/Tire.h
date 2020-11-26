//
//  Tire.h
//  CarPartsInit-ARC
//
//  Created by 全先帅 on 2020/11/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Tire : NSObject

{
    float _pressure;
    float _treadDepth;
}
- (id) initWithPressure:(float) pressure;
- (id) initWithTreadDepth:(float) depth;

- (id) initWithPressure:(float)pressure
             treadDepth:(float)depth;

- (void) setPressure:(float)pressure;
- (float) pressure;

- (void) setTreadDepth:(float)depth;
- (float) treadDepth;

@end

NS_ASSUME_NONNULL_END
