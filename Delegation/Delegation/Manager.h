//
//  Manager.h
//  Delegation
//
//  Created by 全先帅 on 2020/12/16.
//

#import <Foundation/Foundation.h>
#import "WorkerProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Manager : NSObject

@property (weak) id <WorkerProtocol> delegation;

-(void)doWork;

@end

NS_ASSUME_NONNULL_END
