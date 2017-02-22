//
//  Account.m
//  LinkedIn
//
//  Created by saekof on 2017-02-21.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "Account.h"

@implementation Account

// constractor
- (id)initWithUserNameAndPassWord:(NSString*)userName password:(NSString*)password {
    self = [super init];
    if (self) { // allocated some memory
        self.userName = userName;
        self.password = password;
    } else {
        self = nil;
    }
    return self;
}
// methods
-(BOOL)isAccountValid {
    return true;
}

@end
