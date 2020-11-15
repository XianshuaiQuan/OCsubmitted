//
//  main.m
//  Shapes-Inheritance
//
//  Created by 全先帅 on 2020/11/15.
//

#import <Foundation/Foundation.h>

typedef enum {
    kRedColor,
    kGreenColor,
    kBlueColor
}ShapeColor;

typedef struct{
    int x,y,width,height;
}ShapeRect;

NSString* colorName(ShapeColor color)
{
    switch (color) {
        case kRedColor:
            return @"Red";
            break;
        case kGreenColor:
            return @"Green";
            break;
        case kBlueColor:
            return @"Blue";
            break;
        return @"NO Color";
    }
}

/*........................................*/

@interface Shape : NSObject
{
    ShapeColor fillColor;
    ShapeRect bounds;
}
-(void)setFillColor:(ShapeColor)fillColor;
-(void)setBounds:(ShapeRect)bounds;
-(void)draw;
@end//base calss :shape

@implementation Shape
-(void)setFillColor:(ShapeColor)c
{
    fillColor=c;
}//setFillColor

-(void)setBounds:(ShapeRect)b
{
    bounds=b;
}//setBounds

-(void)draw
{
    
}//draw

@end//Shape

/*...........................................*/

@interface Circle  : Shape

@end//Circle

@implementation Circle

-(void)draw
{
    NSLog(@"drawing a Circle at (%d %d %d %d) in %@ ",bounds.x,bounds.y,bounds.width,bounds.height,colorName(fillColor));
}//draw

@end//circle

/*...........................................*/

@interface Rectangle : Shape

@end//Rectangle

@implementation Rectangle

-(void)draw
{
    NSLog(@"drawing a Rectangle at (%d %d %d %d) in %@",bounds.x,bounds.y,bounds.width,bounds.height,colorName(fillColor));
}//draw

@end//Rectangle

/*...........................................*/

@interface Egg : Shape

@end//Rectangle

@implementation Egg

-(void)draw
{
    NSLog(@"drawing a Egg at (%d %d %d %d) in %@ ",bounds.x,bounds.y,bounds.width,bounds.height,colorName(fillColor));
}//draw

@end//Egg

/*...........................................*/

@interface Triangle : Shape

@end//Triangle

@implementation Triangle

-(void)draw
{
    NSLog(@"drawing a Triangle  at (%d %d %d %d) in %@",bounds.x,bounds.y,bounds.width,bounds.height,colorName(fillColor));
}//draw

@end//Triangle

/*...........................................*/

void drawShapes(id shapes[] ,int count)
{
    for(int i=0;i<count;i++)
    {
        id shape =shapes[i];
        [shape draw];
    }
}





int main(int argc, const char * argv[]) {
    id shapes[4];
    
    ShapeRect rect0={0,0,10,30};
    shapes[0]=[Circle new];
    [shapes[0] setBounds:rect0];
    [shapes[0] setFillColor:kRedColor];
    
    ShapeRect rect1={0,10,30,40};
    shapes[1]=[Rectangle new];
    [shapes[1] setBounds:rect1];
    [shapes[1] setFillColor:kGreenColor];
    
    ShapeRect rect2={20,20,55,30};
    shapes[2]=[Egg new];
    [shapes[2] setBounds:rect2];
    [shapes[2] setFillColor:kBlueColor];
    
    ShapeRect rect3={66,11,90,30};
    shapes[3]=[Triangle new ];
    [shapes[3] setBounds:rect3];
    [shapes[3] setFillColor:kRedColor];
    
    drawShapes(shapes,4);
    
    return 0;
}//main
