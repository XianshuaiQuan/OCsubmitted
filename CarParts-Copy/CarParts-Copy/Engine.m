//
//  Engine.m
//  CarParts-Copy
//
//  Created by 全先帅 on 2020/12/15.
//

#import "Engine.h"

@implementation Engine

-(id)copyWithZone:(NSZone *)zone
{
    Engine* newEngine=[[[self class] allocWithZone:zone]init];
    return newEngine;
}//copyWithZone

-(NSString*)description
{
    return @"I am an Engine!";
}//description

@end
