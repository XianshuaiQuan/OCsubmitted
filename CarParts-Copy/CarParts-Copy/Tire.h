//
//  Tire.h
//  CarParts-Copy
//
//  Created by 全先帅 on 2020/12/15.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Tire : NSObject<NSCopying>

@property(nonatomic,assign) float pressure;
@property(nonatomic,assign) float treadDepth;

-(instancetype)initWithPressure:(float)pressure;
-(instancetype)initWithTreadDepth: (float)treadDepth;
-(instancetype)initWithPressure: (float)pressure treadDepth:(float)treadDepth;

@end

NS_ASSUME_NONNULL_END
