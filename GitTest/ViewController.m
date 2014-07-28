//
//  ViewController.m
//  GitTest
//
//  Created by Rotem Shukron on 7/28/14.
//  Copyright (c) 2014 Rotem. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) NSString *testString; //Everything is test here

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.loginView.readPermissions = @[@"public_profile", @"email", @"user_friends"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
