//
//  main.m
//  SampleViewController
//
//  Created by saekof on 2017-02-27.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Shape.h"
#import "Rectangle.h"
#import "Circle.h"
#import "Circle.h"


int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        int totalRect;
        
        // is-A relationship
        // circle is a shape, Rectangle is a shape // Class-Object
        // has a relationship
        // Circle has a radius // Class has property
        
        NSMutableArray<Shape*>* listOfShape;
        NSMutableArray<Rectangle*>* listOfRectangle;
        
        Shape* shape1 = [[Shape alloc] initWithLength:3];
        
        Rectangle* rec1 = [[Rectangle alloc] initWithLengthAndWidth:5 width:6];
        [listOfShape addObject:rec1]; // can add rec1 as a Shapes
        [listOfRectangle addObject:rec1];
        
        Circle* circle1 = [[Circle alloc] initWithLength:4];
        [listOfShape addObject:circle1];
        
        [listOfRectangle addObject:shape1];
        
        
        
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
