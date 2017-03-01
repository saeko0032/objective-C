//
//  Rectangle.m
//  
//
//  Created by saekof on 2017-02-27.
//
//

#import "Rectangle.h"

@implementation Rectangle

- (id)initWithLengthAndWidth:(int)length width:(int)width
{
    self = [super initWithLength:length];
    if (self) {
        self.width = width;
    }
    return self;
}

- (float)area
{
    float a = self.length * self.width;
    return a;
}

- (float)cicumference
{
    return 2 * (self.length + self.width);
}

@end
