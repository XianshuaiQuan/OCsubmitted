//
//  main.m
//  Shapes-Procedural
//
//  Created by 全先帅 on 2020/11/14.
//

//面向过程编程，很麻烦！不利于维护，代码量大！！！！

#import <Foundation/Foundation.h>
typedef enum {
    kCircle,
    kRectangle,
    kEgg
}ShapeType;
typedef enum {
    kRedColor,
    kGreenColor,
    kBlueColor
}ShapeColor;
typedef struct {
    int x,y,width,height;
}ShapeRect;
typedef struct {
    ShapeType type;
    ShapeColor fillColor;
    ShapeRect bounds;
}shape;

NSString* colorName(ShapeColor color)
{
    switch (color)
    {
        case kRedColor:
            return @"Red";
            break;
        case kGreenColor:
            return @"Green";
            break;
        case kBlueColor:
            return @"Blue";
            break;
    }
    return @"NO Color!";
}

void drawCircle(ShapeRect rect,ShapeColor color)
{
    NSLog(@"drawing a circle at (%d %d %d %d) in %@",rect.x,rect.y,rect.width,rect.height,colorName(color));
}
void drawRectangle(ShapeRect rect,ShapeColor color)
{
    NSLog(@"drawing a Rectangle at (%d %d %d %d) in %@",rect.x,rect.y,rect.width,rect.height,colorName(color));
}
void drawEgg(ShapeRect rect,ShapeColor color)
{
    NSLog(@"drawing a Egg at (%d %d %d %d) in %@",rect.x,rect.y,rect.width,rect.height,colorName(color));
}

void drawShapes(shape shapes[],int count)
{
    for(int i=0;i<count;i++)
    {
        switch(shapes[i].type)
        {
            case kCircle:
                drawCircle(shapes[i].bounds,shapes[i].fillColor);
                break;
            case kRectangle:
                drawRectangle(shapes[i].bounds,shapes[i].fillColor);
                break;
            case kEgg:
                drawEgg(shapes[i].bounds,shapes[i].fillColor);
                break;
        }
    }
}

int main(int argc, const char * argv[]) {
    shape shapes[3];
    ShapeRect rect0={0,0,10,30};
    shapes[0].type=kCircle;
    shapes[0].fillColor=kRedColor;
    shapes[0].bounds=rect0;
    
    ShapeRect rect1={30,40,50,60};
    shapes[1].type=kRectangle;
    shapes[1].fillColor=kGreenColor;
    shapes[1].bounds=rect1;
    
    ShapeRect rect2={15,18,37,29};
    shapes[2].type=kEgg;
    shapes[2].fillColor=kBlueColor;
    shapes[2].bounds=rect2;
    
    drawShapes(shapes,3);
    
    return 0;
}
