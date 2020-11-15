//
//  main.m
//  Shapes-Objective
//
//  Created by 全先帅 on 2020/11/14.
//

#import <Foundation/Foundation.h>


typedef enum {
    kRedColor,
    kGreenColor,
    kBlueColor
} ShapeColor;


typedef struct {
    int x, y, width, height;
} ShapeRect;


NSString *colorName (ShapeColor color)
{
    switch (color) {
        case kRedColor:
            return @"red";
            break;
        case kGreenColor:
            return @"green";
            break;
        case kBlueColor:
            return @"blue";
            break;
    }
    
    return @"no clue";
    
} // colorName


@interface Circle : NSObject
{
    ShapeColor  fillColor;
    ShapeRect   bounds;
}

- (void) setFillColor: (ShapeColor) fillColor;

- (void) setBounds: (ShapeRect) bounds;

- (void) draw;

@end // Circle


@implementation Circle

- (void) setFillColor: (ShapeColor) c
{
    fillColor = c;
} // setFillColor


- (void) setBounds: (ShapeRect) b
{
    bounds = b;
} // setBounds


- (void) draw
{
    NSLog (@"drawing a circle at (%d %d %d %d) in %@",
           bounds.x, bounds.y,
           bounds.width, bounds.height,
           colorName(fillColor));
} // draw

@end // Circle



@interface Rectangle : NSObject
{
    ShapeColor    fillColor;
    ShapeRect    bounds;
}

- (void) setFillColor: (ShapeColor) fillColor;

- (void) setBounds: (ShapeRect) bounds;

- (void) draw;

@end // Rectangle


@implementation Rectangle

- (void) setFillColor: (ShapeColor) c
{
    fillColor = c;
} // setFillColor


- (void) setBounds: (ShapeRect) b
{
    bounds = b;
} // setBounds


- (void) draw
{
    NSLog (@"drawing a rectangle at (%d %d %d %d) in %@",
           bounds.x, bounds.y,
           bounds.width, bounds.height,
           colorName(fillColor));
} // draw

@end // Rectangle



@interface Egg : NSObject
{
    ShapeColor    fillColor;
    ShapeRect    bounds;
}

- (void) setFillColor: (ShapeColor) fillColor;

- (void) setBounds: (ShapeRect) bounds;

- (void) draw;

@end // Egg


@implementation Egg

- (void) setFillColor: (ShapeColor) c
{
    fillColor = c;
} // setFillColor


- (void) setBounds: (ShapeRect) b
{
    bounds = b;
} // setBounds


- (void) draw
{
    NSLog (@"drawing an egg at (%d %d %d %d) in %@",
           bounds.x, bounds.y,
           bounds.width, bounds.height,
           colorName(fillColor));
} // draw

@end // Egg


//添加一个三角形
@interface Triangle : NSObject
{
    @private
    ShapeColor fillColor;
    ShapeRect bounds;
}
-(void)setFillColor:(ShapeColor)fillColor;
-(void)setBounds:(ShapeRect)bounds;
-(void)draw;
@end//Triangle

@implementation Triangle
-(void)setFillColor:(ShapeColor)c
{
    fillColor=c;
}
-(void)setBounds:(ShapeRect)b
{
    bounds=b;
}
- (void) draw
{
    NSLog (@"drawing an triangle at (%d %d %d %d) in %@",
           bounds.x, bounds.y,
           bounds.width, bounds.height,
           colorName(fillColor));
} // draw


@end





void drawShapes (id shapes[], int count)//注意，此处要更改编译设置，将Objective-C Automatic Reference Counting 设置为NO
{
    for (int i = 0; i < count; i++) {
        id shape = shapes[i];
        [shape draw];
    }
    
} // drawShapes



int main (int argc, const char * argv[])
{
    id shapes[4];
    
    ShapeRect rect0 = { 0, 0, 10, 30 };
    shapes[0] = [Circle new];
    [shapes[0] setBounds: rect0];
    [shapes[0] setFillColor: kRedColor];
    
    ShapeRect rect1 = { 30, 40, 50, 60 };
    shapes[1] = [Rectangle new];
    [shapes[1] setBounds: rect1];
    [shapes[1] setFillColor: kGreenColor];
    
    ShapeRect rect2 = { 15, 19, 37, 29 };
    shapes[2] = [Egg new];
    [shapes[2] setBounds: rect2];
    [shapes[2] setFillColor: kBlueColor];
    
    ShapeRect rect3={47,32,80,50};
    shapes[3]=[Triangle new];
    [shapes[3] setFillColor:kRedColor];
    [shapes[3] setBounds:rect3];
    
    drawShapes (shapes, 4);
    
    return (0);
    
} // main
