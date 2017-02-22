//
//  Comments.h
//  LinkedIn
//
//  Created by saekof on 2017-02-21.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"
#import "Attachement.h"

@interface Comments : NSObject

@property (nonatomic) NSInteger commentID;
@property (strong, nonatomic)User* commentOwner;
@property (strong, nonatomic)NSDate* date;
@property (strong, nonatomic)NSMutableArray<Attachement*>* attachments;


- (id)initWithAllParameters:(NSInteger)commentID
               commentOwner:(User*)commentOwner
                       date:(NSDate*)date
                attachments:(NSMutableArray<Attachement*>*)attachments;


@end
