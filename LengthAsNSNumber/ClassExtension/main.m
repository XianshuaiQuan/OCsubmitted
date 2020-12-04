//
//  main.m
//  ClassExtension
//
//  Created by 全先帅 on 2020/12/4.
//

#import <Foundation/Foundation.h>
#import "Things.h"
#import "Things+__.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Things * th=[[Things alloc]init];
        [th resetAllValues];
        NSLog (@"%@",[th doSomething]);
        NSLog(@"%@",th);
    }
    return 0;
}
