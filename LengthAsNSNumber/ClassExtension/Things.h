//
//  Things.h
//  ClassExtension
//
//  Created by 全先帅 on 2020/12/4.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Things : NSObject

@property (assign) NSInteger thing1;
@property (readonly,assign) NSInteger thing2;

-(void) resetAllValues;

@end

@interface Things ()
{
    NSInteger thing4;
}
@property (readwrite, assign) NSInteger thing2;
@property (assign) NSInteger thing3;

-(NSString*) doSomething;
@end

NS_ASSUME_NONNULL_END
