//
//  main.m
//  CarProperties
//
//  Created by 全先帅 on 2020/11/29.
//

#import <Foundation/Foundation.h>
#import "Tire.h"
#import "Car.h"
#import "AllWeatherRadial.h"
#import "Slant6.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car* car=[[Car alloc]init];
        
        car.name=@"奔驰";
        
        for(int i=0;i<4;i++)
        {
            AllWeatherRadial* ral;
            ral=[[AllWeatherRadial alloc]init];
            
            ral.rainHandling=20+i;
            ral.snowHandling=28+i;
            
            NSLog(@"Tire %d's handling is %.f,%.f",i,ral.rainHandling,ral.snowHandling);
            
            [car setTire:ral atIndex:i];
        }
        
        Engine* engine=[[Slant6 alloc]init];
        [car setEngine:engine];
        [car print];
        
    }
    return 0;
}
