//
//  Profile.m
//  LinkedIn
//
//  Created by saekof on 2017-02-21.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "Profile.h"

@implementation Profile

- (id)initWithAllParameters:(NSString*)firstName lastName:(NSString*)lastName address:(NSString*)address age:(NSInteger)age phoneNumber:(NSNumber*)phoneNumber imageURL:(NSURL*)imageURL {
    
    self = [super init];
    if(self) {
        self.firstName = firstName;
        self.lastName = lastName;
        self.address = address;
        self.age = age;
        self.phoneNumber = phoneNumber;
        self.imageURL = imageURL;
    } else {
        self = nil;
    }
    return self;
}

-(void)editProfileWithNewAllParameters:(NSString*)newFirstName newLastName:(NSString*)newLastName newAddress:(NSString*)newAddress newAge:(NSInteger)newAge newPhoneNumber:(NSNumber*)newPhoneNumber newImageURL:(NSURL*)newImageURL {
    self.firstName = newFirstName;
    self.lastName = newLastName;
    self.address = newAddress;
    self.age = newAge;
    self.phoneNumber = newPhoneNumber;
    self.imageURL = newImageURL;
}

- (void)saveProfile {
    
    NSLog(@"account successfully updated");
}

- (void)printProfile {
    NSLog(@"firstname : %@\n",self.firstName);
    NSLog(@"lastname  : %@\n",self.lastName);
    NSLog(@"address  : %@\n",self.address);
    NSLog(@"my age : %ld\n",(long)self.age);
    NSLog(@"my phonenumber : %@\n",self.phoneNumber);
    NSLog(@"my imageprofile located : %@\n",self.imageURL);
    
}

@end
