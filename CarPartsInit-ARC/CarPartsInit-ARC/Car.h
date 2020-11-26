//
//  Car.h
//  CarPartsInit-ARC
//
//  Created by 全先帅 on 2020/11/26.
//

#import <Foundation/Foundation.h>
@class Engine;
@class Tire;

NS_ASSUME_NONNULL_BEGIN

@interface Car : NSObject

{
    NSMutableArray* _tires;
    Engine* _engine;
}
- (void) setEngine: (Engine*) engine;
-(Engine*) engine;

- (void) setTire:(Tire*) tire atIdex:(int)indx;
- (Tire*) tireAtIndex : (int) index;

- (void) print;

@end

NS_ASSUME_NONNULL_END
