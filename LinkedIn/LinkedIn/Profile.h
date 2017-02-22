//
//  Profile.h
//  LinkedIn
//
//  Created by saekof on 2017-02-21.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Profile : NSObject

@property (strong, nonatomic) NSString* firstName;
@property (strong, nonatomic) NSString* lastName;
@property (strong, nonatomic) NSString* address;
@property (nonatomic) NSInteger age;
@property (strong, nonatomic) NSNumber* phoneNumber;
@property (strong, nonatomic) NSURL* imageURL;

- (id)initWithAllParameters:(NSString*)firstName lastName:(NSString*)lastName address:(NSString*)address age:(NSInteger)age phoneNumber:(NSNumber*)phoneNumber imageURL:(NSURL*)imageURL;

-(void)editProfileWithNewAllParameters:(NSString*)newFirstName newLastName:(NSString*)newLastName newAddress:(NSString*)newAddress newAge:(NSInteger)newAge newPhoneNumber:(NSNumber*)newPhoneNumber newImageURL:(NSURL*)newImageURL;

- (void)saveProfile;

- (void)printProfile;
@end
