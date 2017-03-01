//
//  Square.m
//  
//
//  Created by saekof on 2017-02-27.
//
//

#import "Square.h"

@implementation Square

- (id)initWithLength:(int)length
{
    self = [super initWithLength:length];
    return self;
}

- (float)area
{
    float a = self.length * self.length;
    return a;
}

- (float)cicumference
{
    return 4 * self.length;
}

@end
