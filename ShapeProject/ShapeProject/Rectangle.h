//
//  Rectangle.h
//  
//
//  Created by saekof on 2017-02-27.
//
//

#import <Foundation/Foundation.h>
#import "Shape.h"

@interface Rectangle : Shape

@property int width;

- (id)initWithLengthAndWidth:(int)length width:(int)width;

@end
