//
//  main.m
//  LengthAsNSNumber
//
//  Created by 全先帅 on 2020/12/4.
//

#import <Foundation/Foundation.h>
#import "NSString+NumberConvinces.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableDictionary* dict=[NSMutableDictionary dictionary];
        
        [dict setObject:[@"hello" lengthAsNumber] forKey:@"hello"];
        [dict setObject:[@"iLikeFish" lengthAsNumber] forKey:@"iLikeFish"];
        [dict setObject:[@"once upon a time" lengthAsNumber] forKey:@"once upon a time"];
        
        NSLog(@"%@",dict);
    }
    return 0;
}
