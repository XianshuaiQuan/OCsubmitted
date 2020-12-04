//
//  Things.m
//  ClassExtension
//
//  Created by 全先帅 on 2020/12/4.
//

#import "Things.h"

@implementation Things

- (void)resetAllValues
{
    _thing1 = 200;
    _thing2 = 300;
    _thing3 = 400;
    thing4 = 5;
}

- (NSString *) description
{
    NSString *desc = [NSString stringWithFormat: @"%zd %zd %zd %zd",
                      _thing1, _thing2, _thing3,thing4];
    
    return (desc);
    
} // description

-(NSString*) doSomething
{
    return (@"I want to sleep.");
}
@end

