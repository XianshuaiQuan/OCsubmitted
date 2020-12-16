//
//  WorkerProtocol.h
//  Delegation
//
//  Created by 全先帅 on 2020/12/16.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol WorkerProtocol <NSObject>

@required
-(void)doSomeRequiredWork;

@optional
-(void)doSomeOptionalWork;

@end

NS_ASSUME_NONNULL_END
