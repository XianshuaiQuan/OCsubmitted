//
//  Thing1.m
//  CategoryThing
//
//  Created by 全先帅 on 2020/12/6.
//

#import <Foundation/Foundation.h>
#import "CategoryThing.h"

@implementation CategoryThing(Thing1)

-(void)setThing1:(NSInteger)thing1
{
    _thing1=thing1;
}
-(NSInteger)thing1
{
    return _thing1;
}

@end
