//
//  Shape.h
//  
//
//  Created by saekof on 2017-02-27.
//
//

#import <Foundation/Foundation.h>

@interface Shape : NSObject

@property int length;

- (float)area;
- (float)circumference;
- (id)initWithLength:(int)length;

@end
