//
//  NSString+NumberConvinces.m
//  LengthAsNSNumber
//
//  Created by 全先帅 on 2020/12/4.
//

#import "NSString+NumberConvinces.h"

@implementation NSString (NumberConvinces)

-(NSNumber*)  lengthAsNumber
{
    NSNumber* num=[NSNumber numberWithUnsignedInt:[self length]];
    return num;
}//lengthAsNumber

@end
