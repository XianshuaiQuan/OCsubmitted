//
//  main.m
//  CarParts-Copy
//
//  Created by 全先帅 on 2020/12/15.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "AllWeatherRadial.h"
#import "Slant6.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Car* car=[[Car alloc]init];
        car.name=@"BMW";
        
        for(int i=0;i<4;i++)
        {
            AllWeatherRadial* tmp=[[AllWeatherRadial alloc]init];
            [car setTire:tmp atIndex:i];
        }
        
        Slant6* engine=[[Slant6 alloc]init];
        car.engine=engine;
        
        [car print];
        
       Car* newCar=[car copy];
       [newCar print];
      
    }
    return 0;
}
