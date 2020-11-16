//
//  main.m
//  Shapes-Green-Circle
//
//  Created by 全先帅 on 2020/11/16.
//

#import <Foundation/Foundation.h>

typedef enum  {
    kRedColor,
    kGreenColor,
    kBlueColor
}ShapeColor;

typedef struct  {
    int x,y,width,height;
}ShapeRect;

NSString * colorName(ShapeColor color)
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
    }
}

/*.............................................*/

@interface Shape : NSObject
{
    ShapeColor fillColor;
    ShapeRect bounds;
}
-(void) setFillColor:(ShapeColor)c;
-(void) setBounds:(ShapeRect)b;
-(void) draw;
@end//base class,Shape

@implementation Shape

-(void)setBounds:(ShapeRect)b
{
    bounds=b;
}
-(void)setFillColor:(ShapeColor)c
{
    fillColor=c;
}
-(void)draw
{
    
}

@end//Shape

/*............................................*/

@interface Circle : Shape

@end//Circle

@implementation Circle

-(void)setFillColor:(ShapeColor)c
{
    if(c==kRedColor)
        c=kGreenColor;
    [super setFillColor:c];
}

-(void)draw
{
    NSLog(@"drawing a Circle (%d %d %d %d) in%@",bounds.x,bounds.y,bounds.width,bounds.height,colorName(fillColor));
}

@end//Circle

/*.............................................*/

@interface Rectangle : Shape

@end//Rectangle

@implementation Rectangle

-(void)draw
{
    NSLog(@"drawing a Rectangle (%d %d %d %d) in%@",bounds.x,bounds.y,bounds.width,bounds.height,colorName(fillColor));
}

@end//Rectangle

/*.............................................*/

@interface Egg : Shape

@end//Egg

@implementation Egg

-(void)draw
{
    NSLog(@"drawing a Egg (%d %d %d %d) in%@",bounds.x,bounds.y,bounds.width,bounds.height,colorName(fillColor));
}

@end//Egg

/*.............................................*/

void drawShapes(id shapes[],int count)
{
    for(int i=0;i<count;i++)
    {
        [shapes[i] draw];
    }
}

/*.............................................*/

int main(int argc, const char * argv[]) {
    id shapes[3];
    
    ShapeRect rect0={0,0,10,20};
    shapes[0]=[Circle new];
    [shapes[0] setFillColor:kRedColor];
    [shapes[0] setBounds:rect0];
    
    ShapeRect rect1={0,10,10,30};
    shapes[1]=[Rectangle new];
    [shapes[1] setFillColor:kGreenColor];
    [shapes[1] setBounds:rect1];

    ShapeRect rect2={0,0,60,90};
    shapes[2]=[Egg new];
    [shapes[2] setFillColor:kBlueColor];
    [shapes[2] setBounds:rect2];

    drawShapes(shapes, 3);
    
    return 0;
}
