//
//  Attachement.h
//  LinkedIn
//
//  Created by saekof on 2017-02-21.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Attachement : NSObject

@property (nonatomic) NSInteger attachmentID;
@property (nonatomic) NSInteger type;
@property (strong, nonatomic) NSURL *dataURL;

- (id)initWithALLPArameters:(NSInteger)attachmentID type:(NSInteger)type dataURL:(NSURL*)dataURL;

@end
