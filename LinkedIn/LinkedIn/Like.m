//
//  Like.m
//  LinkedIn
//
//  Created by saekof on 2017-02-21.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "Like.h"

@implementation Like

- (id)initWithAllParameters:(NSInteger)likeID user:(User*)likeOwner date:(NSDate*)date {
    self = [super init];
    if(self) {
        self.likeID = likeID;
        self.likeOwner = likeOwner;
        self.date = date;
    } else {
        self = nil;
    }
    return self;
}

@end
