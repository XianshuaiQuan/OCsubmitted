//
//  Manager.m
//  Delegation
//
//  Created by 全先帅 on 2020/12/16.
//

#import "Manager.h"

@interface Manager ()

-(void) myWork;

@end

@implementation Manager

-(void)doWork
{
    [_delegation doSomeRequiredWork];
    
    if(YES==[_delegation respondsToSelector:@selector(doSomeOptionalWork)])
    {
        [_delegation doSomeOptionalWork];
    }
    
    [self myWork];
}

-(void) myWork
{
    NSLog(@"I am a manager and I am working.");
}

@end
