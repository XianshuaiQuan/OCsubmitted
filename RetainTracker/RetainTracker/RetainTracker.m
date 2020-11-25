//
//  RetainTracker.m
//  RetainTracker
//
//  Created by 全先帅 on 2020/11/25.
//

#import "RetainTracker.h"

@implementation RetainTracker

-(id)init
{
    if(self=[super init])
    {
        NSLog(@"init:Retain count of %zd",[self retainCount]);
    }
    return self;
}

-(void)dealloc
{
    NSLog(@"dealloc called, Bye Bye!");
    [super dealloc];//ARC是自动管理内存的，要调用dealloc方法需要禁用系统自动引用计数
}

@end
