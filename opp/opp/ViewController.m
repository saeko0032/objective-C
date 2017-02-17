//
//  ViewController.m
//  opp
//
//  Created by saekof on 2017-02-16.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self crreatOneStudentObject];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void) crreatOneStudentObject {
    Student *john = [[Student alloc] initStudentWithStudentID:@"1" andName:@"John" andAge:20 andMajor:@"English" andMyGpa:78.50 andCourses:NULL andAdmissionYear:2012 andAddress:@"Vancouver City center"];
    [john printStudentInformation];
}

@end
