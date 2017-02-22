//
//  Attachement.m
//  LinkedIn
//
//  Created by saekof on 2017-02-21.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "Attachement.h"

@implementation Attachement

- (id)initWithALLPArameters:(NSInteger)attachmentID type:(NSInteger)type dataURL:(NSURL*)dataURL {
    self = [super init];
    if(self) {
        self.attachmentID = attachmentID;
        self.type = type;
        self.dataURL = dataURL;
    } else {
        self = nil;
    }
    return self;

}

@end
