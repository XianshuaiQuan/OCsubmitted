//
//  main.m
//  RetainTracker
//
//  Created by 全先帅 on 2020/11/25.
//

#import <Foundation/Foundation.h>
#import "RetainTracker.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        RetainTracker* rt=[RetainTracker new];//1
        
        [rt retain];//2
        NSLog(@"%zd",[rt retainCount]);
        
        [rt retain];//3
        NSLog(@"%zd",[rt retainCount]);
        
        [rt release];//2
        NSLog(@"%zd",[rt retainCount]);
        
        [rt release];//1
        NSLog(@"%zd",[rt retainCount]);
        
        [rt retain];//2
        NSLog(@"%zd",[rt retainCount]);
        
        [rt retain];//3
        NSLog(@"%zd",[rt retainCount]);
        
        [rt release];//2
        NSLog(@"%zd",[rt retainCount]);
        
        [rt release];//1
        NSLog(@"%zd",[rt retainCount]);
        
        [rt release];//0
        NSLog(@"%zd",[rt retainCount]);
        
        [rt release];//0
        NSLog(@"%zd",[rt retainCount]);

        
    }
    return 0;
}
