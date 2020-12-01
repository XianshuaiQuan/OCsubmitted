//
//  Tire.h
//  CarProperties
//
//  Created by 全先帅 on 2020/11/29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Tire : NSObject


@property float pressure;//自动设置setter，getter方法，在实现中配合@synthesize关键字
@property float treadDepth;

- (id) initWithPressure:(float) p;
- (id) initWithTreadDepth:(float) td;
- (id) initWithPressure:(float)p treadDepth:(float) td;

@end

NS_ASSUME_NONNULL_END
