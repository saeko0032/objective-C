//
//  main.m
//  LinkedIn
//
//  Created by saekof on 2017-02-21.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Account.h"
#import "Profile.h"
#import "FeedManager.h"

int main(int argc, const char * argv[]) {
    Account *myAccount = [[Account alloc] initWithUserNameAndPassWord:@"saeko" password:@"12345"];
    BOOL result = [myAccount isAccountValid];
    if(result) {
        NSLog(@"you success to log in");
    } else {
        NSLog(@"you failed");
    }
    
    NSNumber* number = [NSNumber numberWithDouble:123456 ];
    NSURL* myImageURL = [[NSURL alloc] initWithString:@"http://google.co.jp"];
    Profile *myProfile = [[Profile alloc] initWithAllParameters:@"Saeko" lastName:@"Fukui" address:@"Vancouver City center" age:45 phoneNumber:number imageURL:myImageURL];
    [myProfile printProfile];
    
    FeedManager* feedManager = [[FeedManager alloc] init];
     NSArray<Post*>* listOfPosts = [feedManager loadFeedAcoount:myAccount amount:10];
    for(int i = 0; i<listOfPosts.count; i++) {
        Post* post = [listOfPosts objectAtIndex:i];
        [post show];
        
        User* user = [[User alloc] init];
        NSDate* date = [NSDate date]; //static method
        Like *like = [[Like alloc] initWithAllParameters:1 user:user date:date];

        [post addLike:like];
        
        NSMutableArray<Attachement*>* attachments = [[NSMutableArray <Attachement*> alloc] init];
        Attachement* att1 = [[Attachement alloc] initWithALLPArameters:1 type:1 dataURL:[NSURL URLWithString:@"http://google.oc.jp"]];
        Attachement* att2 = [[Attachement alloc] initWithALLPArameters:1 type:1 dataURL:[NSURL URLWithString:@"http://google.oc.jp"]];
        
        [attachments addObject:att1];
        [attachments addObject:att2];
        
        Comments* comment = [[Comments alloc] initWithAllParameters:1 commentOwner:user date:date attachments:attachments];
        
        [post addComments:comment];
        
    }
    
    
    return NSApplicationMain(argc, argv);
}
