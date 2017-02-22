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
    
    
    return NSApplicationMain(argc, argv);
}
