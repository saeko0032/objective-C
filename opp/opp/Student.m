//
//  Student.m
//  opp
//
//  Created by saekof on 2017-02-16.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "Student.h"

@implementation Student


- (void)printMyStudentId
{
    NSLog(@"My name is %@ and my address is %@, My age is %d. My major is %@",self.name, self.address, self.age, self.major);
}

- (void) printAge
{
    NSLog(@"My name is %@ and my address is %@, My age is %d. My major is %@",self.name, self.address, self.age, self.major);
}

- (void) printStudentInformation
{
    NSLog(@"My name is %@ and my address is %@, My age is %d. My major is %@",self.name, self.address, self.age, self.major);
}

- (id) initStudentWithStudentID:(NSString *)studentID andName:(NSString *)name andAge:(int)age andMajor:(NSString *)major andMyGpa:(int)myGPA andCourses:(NSArray<NSString *> *)courses andAdmissionYear:(int)addmissionYear andAddress:(NSString *)address
{
    // self is pointer to be created
    self = [self init];
    if(self) {
        self.studentID = studentID;
        self.name = name;
        self.age = age;
        self.major = major;
        self.myGPA = myGPA;
        self.courses = courses;
        self.admissionYear = addmissionYear;
        self.address = address;
        
    }
    return self;
}

@end
