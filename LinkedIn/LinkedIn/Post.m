//
//  Post.m
//  LinkedIn
//
//  Created by saekof on 2017-02-21.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "Post.h"

@implementation Post

- (void)show {
    ;
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


@end
