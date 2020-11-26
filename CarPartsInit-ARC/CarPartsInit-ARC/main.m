//
//  main.m
//  CarPartsInit-ARC
//
//  Created by 全先帅 on 2020/11/26.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "AllWeatherRadial.h"
#import "Slant6.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car* car=[[Car alloc]init];
        
        for(int i=0;i<4;i++)
        {
            AllWeatherRadial* tire=[[AllWeatherRadial alloc] init];
            [car setTire:tire atIdex:i];
        }
        
        Engine* engine=[[Slant6 alloc]init];
        
        [car setEngine:engine];
        
        [car print];
        
    }
    return 0;
}
