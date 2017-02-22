//
//  FeedManager.m
//  LinkedIn
//
//  Created by saekof on 2017-02-21.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "FeedManager.h"

@implementation FeedManager

- (NSArray*)loadFeedAcoount:(Account*)account amount:(NSInteger)numberOfFeeds {

    return nil;
}

//- (NSArray*)loadFeedAcoount:(Account*)account amount:(NSInteger)numberOfFeeds {
//    return NULL;
//}
- (id) initWithAllPerameters:(NSDate*)date authour:(User*)authour attachements:(NSMutableArray<Attachement*>*)attachements likes:(NSMutableArray<Like*>*) likes comments:(NSMutableArray<Comments*>*) comments type:(NSInteger) type {
    self = [super init];
    if (self) {
        self.date = date;
        self.authour = authour;
        self.attachements = attachements;
        self.likes = likes;
        self.comments = comments;
        self.type = type;
        self.isReported = false;
    } else {
        self = nil;
    }
    
    return self;
}
- (void)addLike:(Like*)newLike {
    self.numberOfLikes++;
    [self.likes addObject:newLike];
}

- (void)addComments:(Comments*)newComment
{
    self.numberOfComments++;
    [self.comments addObject:newComment];
}

- (void)editPostWithAttachmentAndType:(NSMutableArray<Attachement*>*) attachements type:(NSInteger)type {}


@end
