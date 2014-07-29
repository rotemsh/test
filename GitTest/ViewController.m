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

-(void)loginViewFetchedUserInfo:(FBLoginView *)loginView user:(id<FBGraphUser>)user
{
    self.profilePictureView.profileID = user.objectID;
    self.nameLabel.text = user.name;
}

-(void)loginViewShowingLoggedInUser:(FBLoginView *)loginView
{
    self.statusLabel.text = @"You're Logged in as";
    
}

-(void)loginViewShowingLoggedOutUser:(FBLoginView *)loginView
{
//    self.profilePictureView.profileID = nil;
    self.nameLabel.text = @"";
    self.statusLabel.text = @"You're not logged in! :(";
}

@end
