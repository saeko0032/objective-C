//
//  Circle.m
//  
//
//  Created by saekof on 2017-02-27.
//
//

#import "Circle.h"

@implementation Circle

- (id)initWithRadius:(int)radius
{
    self = [super initWithLength:radius];
    return self;
}

- (float)area
{
    float a = 3.14 * self.length * self.length;
    return a;
}

 - (float)cicumference
{
    return 2 * 3.14 * self.length;
}

@end
