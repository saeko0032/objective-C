//
//  FeedManager.h
//  LinkedIn
//
//  Created by saekof on 2017-02-21.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Account.h"
#import "User.h"
#import "Attachement.h"
#import "Like.h"
#import "Post.h"
#import "Comments.h"

@interface FeedManager : NSObject

@property (strong, nonatomic) NSDate* date;
@property (strong, nonatomic) User* authour;
@property (strong, nonatomic) NSMutableArray<Attachement*>* attachements;
@property (strong, nonatomic) NSMutableArray<Like*>* likes;
@property (strong, nonatomic) NSMutableArray<Comments*>* comments;


@property (nonatomic) NSInteger type;

// loadsFeedsForAccount amount
- (NSArray<Post*>*)loadFeedAcoount:(Account*)account amount:(NSInteger)numberOfFeeds;
- (id) initWithAllPerameters:(NSDate*)date authour:(User*)authour attachements:(NSMutableArray<Attachement*>*)attachements likes:(NSMutableArray<Like*>*) likes comments:(NSMutableArray<Comments*>*) comments type:(NSInteger) type;
- (void)editPostWithAttachmentAndType:(NSMutableArray<Attachement*>*) attachements type:(NSInteger)type;

@end
