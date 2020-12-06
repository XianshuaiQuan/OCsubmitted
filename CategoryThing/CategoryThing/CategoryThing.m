//
//  CategoryThing.m
//  CategoryThing
//
//  Created by 全先帅 on 2020/12/6.
//

#import "CategoryThing.h"

@implementation CategoryThing

-(NSString*)description
{
    return([NSString stringWithFormat:@"Things are %zd,%zd,%zd",_thing1,_thing2,_thing3]);
}

@end
