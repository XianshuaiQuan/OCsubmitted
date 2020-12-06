//
//  main.m
//  CategoryThing
//
//  Created by 全先帅 on 2020/12/6.
//

#import <Foundation/Foundation.h>
#import "CategoryThing.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        CategoryThing* thing=[[CategoryThing alloc]init];
        
        [thing setThing1:5];
        [thing setThing2:20];
        [thing setThing3:30];
        NSLog(@"%@",thing);
    }
    return 0;
}
