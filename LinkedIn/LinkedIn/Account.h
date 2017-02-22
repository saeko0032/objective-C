//
//  Account.h
//  LinkedIn
//
//  Created by saekof on 2017-02-21.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Account : NSObject

// properties
@property (strong, nonatomic) NSString* userName;
@property (strong, nonatomic) NSString* password;

// constractor
- (id)initWithUserNameAndPassWord:(NSString*)userName password:(NSString*)password;
// methods
-(BOOL)isAccountValid;

@end
