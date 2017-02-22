//
//  Comment.m
//  LinkedIn
//
//  Created by saekof on 2017-02-21.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "Comments.h"

@implementation Comments

- (id)initWithAllParameters:(NSInteger)commentID
               commentOwner:(User*)commentOwner
                       date:(NSDate*)date
                attachments:(NSMutableArray<Attachement*>*)attachments {
    self = [super init];
    if(self) {
        self.commentID = commentID;
        self.commentOwner = commentOwner;
        self.date = date;
        self.attachments = attachments;
    } else {
        self = nil;
    }
    return self;
}

@end
