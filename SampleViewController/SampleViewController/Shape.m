//
//  Shape.m
//  
//
//  Created by saekof on 2017-02-27.
//
//

#import "Shape.h"

@implementation Shape

- (id)initWithLength:(int)length
{
    self = [super init];
    if(self) {
        self.length = length;
    }
    return self;
}

@end
