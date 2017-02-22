//
//  Post.h
//  LinkedIn
//
//  Created by saekof on 2017-02-21.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Like.h"
#import "Comments.h"

@interface Post : NSObject
@property (nonatomic) NSInteger numberOfLikes;
@property (nonatomic) NSInteger numberOfComments;
@property (nonatomic) BOOL isReported;

- (void)show;
- (void)addLike:(Like*)newLike;
- (void)addComments:(Comments*) newComment;

@end
