//
//  main.m
//  SampleViewController
//
//  Created by saekof on 2017-02-27.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "Shape.h"
#import "Rectangle.h"
#import "Square.h"
#import "Circle.h"


int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        // is-A relationship
        // circle is a shape, Rectangle is a shape // Class-Object
        // has a relationship
        // Circle has a radius // Class has property
        
        NSMutableArray<Shape*>* listOfShape = [[NSMutableArray alloc] init];
        int rectangleCount;
        int squareCount;
        int circleCount;
        NSLog(@"How many rectangle do you want to add?");
        scanf("%d",&rectangleCount);
        NSLog(@"How many square do you want to add?");
        scanf("%d",&squareCount);
        NSLog(@"How many circle do you want to add?");
        scanf("%d",&circleCount);
        
        for (int i = 0; i< rectangleCount; i++) {
            int length;
            int width;
            NSLog(@"What's the length of Rectangle %d?", i);
            scanf("%d", &length);
            NSLog(@"What's the width of Rectangle %d?", i);
            scanf("%d", &width);
            [listOfShape addObject:[[Rectangle alloc] initWithLengthAndWidth:length width:width]];
        }
        
        for (int i = 0; i< squareCount; i++) {
            int length;
            NSLog(@"What's the length of Square %d?", i);
            scanf("%d", &length);
            [listOfShape addObject:[[Square alloc] initWithLength:length]];
        }
        
        for (int i = 0; i< circleCount; i++) {
            int radius;
            NSLog(@"What's the radius of Circle %d?", i);
            scanf("%d", &radius);
            [listOfShape addObject:[[Circle alloc] initWithLength:radius]];
        }
        
        int totalRectangleArea = 0;
        int totalRectangleCircumference = 0;
        int totalCircleArea = 0;
        int totalCircleCircumference = 0;
        int totalSquareArea = 0;
        int totalSquareCircumference = 0;

        for (int i = 0; i<listOfShape.count; i++) {
               Shape* shape = [listOfShape objectAtIndex:i];
               if([shape isMemberOfClass:[Rectangle class]]) {
                   totalRectangleArea += [(Rectangle*)shape area];
                   totalRectangleCircumference += [(Rectangle*)shape circumference];
                   
               } else if([shape isMemberOfClass:[Circle class]]) {
                   totalCircleArea += [(Circle*)shape area];
                   totalCircleCircumference += [(Circle*)shape circumference];
               } else if([shape isMemberOfClass:[Square class]]) {
                   totalSquareArea += [(Square*)shape area];
                   totalSquareCircumference += [(Square*)shape circumference];
               }
        }
        
        NSLog(@"totalRectangleArea = %d",totalRectangleArea);
        NSLog(@"totalRectangleCircumference = %d",totalRectangleCircumference);
        
        NSLog(@"totalCircleArea = %d",totalCircleArea);
        NSLog(@"totalCircleCircumference = %d",totalCircleCircumference);
        
        NSLog(@"totalSquareArea = %d",totalSquareArea);
        NSLog(@"totalSquareCircumference = %d",totalSquareCircumference);
        
        return 0;
    }
}
