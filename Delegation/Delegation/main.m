//
//  main.m
//  Delegation
//
//  Created by 全先帅 on 2020/12/16.
//

#import <Foundation/Foundation.h>
#import "Manager.h"
#import "Worker1.h"
#import "Worker2.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Manager* manger=[[Manager alloc]init];
        Worker1* work1=[[Worker1 alloc]init];
        
        manger.delegation=work1;
        [manger doWork];
        
        
        Worker2* work2=[[Worker2 alloc]init];
        
        manger.delegation=work2;
        [manger doWork];
        
    }
    return 0;
}
