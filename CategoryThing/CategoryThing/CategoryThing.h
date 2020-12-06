//
//  CategoryThing.h
//  CategoryThing
//
//  Created by 全先帅 on 2020/12/6.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CategoryThing : NSObject
{
    NSInteger _thing1;
    NSInteger _thing2;
    NSInteger _thing3;
}
@end

@interface CategoryThing(Thing1)

-(void) setThing1:(NSInteger) thing1;
-(NSInteger)thing1;

@end

@interface CategoryThing(Thing2)

-(void) setThing2:(NSInteger) thing2;
-(NSInteger)thing2;

@end

@interface CategoryThing(Thing3)

-(void) setThing3:(NSInteger) thing3;
-(NSInteger)thing3;

@end
NS_ASSUME_NONNULL_END
