//
//  Car.h
//  CarParts-Copy
//
//  Created by 全先帅 on 2020/12/15.
//

#import "Tire.h"
#import "Engine.h"

NS_ASSUME_NONNULL_BEGIN

@interface Car : NSObject<NSCopying>

@property(nonatomic,copy,readwrite) NSString* name;
@property(nonatomic,strong,readwrite) Engine* engine;

-(void)setTire:(Tire*) tire atIndex:(NSInteger) index;
-(Tire*)tireAtIndex:(NSInteger)index;

-(void)print;

@end

NS_ASSUME_NONNULL_END
