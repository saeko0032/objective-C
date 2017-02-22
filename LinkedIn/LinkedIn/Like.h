//
//  Like.h
//  LinkedIn
//
//  Created by saekof on 2017-02-21.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface Like : NSObject

@property (nonatomic) NSInteger likeID;
@property (strong, nonatomic)User* likeOwner;
@property (strong, nonatomic)NSDate* date;

- (id)initWithAllParameters:(NSInteger)likeID user:(User*)likeOwner date:(NSDate*)date;

@end
