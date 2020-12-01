//
//  Car.h
//  CarProperties
//
//  Created by 全先帅 on 2020/12/1.
//

#import <Foundation/Foundation.h>
@class Engine;
@class Tire;

NS_ASSUME_NONNULL_BEGIN

@interface Car : NSObject

@property (copy) NSString* name;
@property (strong) Engine* engine;

-(void) setTire:(Tire*) tire atIndex:(int) index;
-(Tire*) tireAtIndex:(int) index;

-(void) print;
@end

NS_ASSUME_NONNULL_END
