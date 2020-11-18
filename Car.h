//
//  Car.h
//  CarParts-Split
//
//  Created by 全先帅 on 2020/11/18.
//

#import <Foundation/Foundation.h>
//#import "Tire.h"
//#import "Engine.h"

@class Engine;
@class Tire;

NS_ASSUME_NONNULL_BEGIN

@interface Car : NSObject

-(void)setEngine:(Engine*)newEngine;
-(Engine*)engine;

-(void)setTire:(Tire*)tire atIndex:(int)index;
-(Tire*)tireAtIndex:(int)index;

-(void)print;

@end//Car

NS_ASSUME_NONNULL_END
