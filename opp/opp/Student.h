//
//  Student.h
//  opp
//
//  Created by saekof on 2017-02-16.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
// properties
@property NSString *studentID;
@property int age;
@property NSString *name;
@property NSString *major;
@property float myGPA;
@property NSArray<NSString *> *courses;
@property int admissionYear;
@property NSString *address;
//@property(strong, nonatomic) NSString *major1;

// method
- (void) printMyStudentId;
- (void) printAge;
- (void) printStudentInformation;

// constractor
// init -> constractor
//- (id) initStudentWithAppParameters(NSString *studentID, int age, NSString *name, NSString *major, float myGPA, NSArray<NSString*> *courses,int admissionYear, NSString *address);
- (id) initStudentWithStudentID:(NSString *)studentID
                        andName:(NSString *)name
                        andAge:(int) age
                        andMajor:(NSString*) major
                        andMyGpa:(int) myGPA
                        andCourses:(NSArray<NSString *>*) courses
                        andAdmissionYear:(int) addmissionYear
                        andAddress:(NSString *)address;
@end
