//
//  main.m
//  CarParts-Split
//
//  Created by 全先帅 on 2020/11/18.
//

#import <Foundation/Foundation.h>
#import "Tire.h"
#import "Engine.h"
#import "Car.h"

int main(int argc, const char * argv[]) {
    Car* car=[Car new];
    Engine* engine=[Engine new];
    [car setEngine:engine];
    
    for(int i=0;i<4;i++)
    {
        Tire* tire=[Tire new];
        [car setTire:tire  atIndex:i];
    }
    [car print];
    
    return 0;
}
