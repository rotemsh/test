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
    self.profilePictureView.profileID = nil;
    self.nameLabel.text = @"";
    self.statusLabel.text = @"You're not logged in! :(";
}

-(void)loginView:(FBLoginView *)loginView handleError:(NSError *)error
{
    NSString *alertMessage, *alertTitle;
    
    if ([FBErrorUtility shouldNotifyUserForError:error]) {
        alertTitle = @"Facebook Error";
        alertMessage = [FBErrorUtility userMessageForError:error];
    }else if ([FBErrorUtility errorCategoryForError:error] == FBErrorCategoryAuthenticationReopenSession)
    {
        alertTitle = @"Session Error";
        alertMessage = @"Your current session is no longer valid. Please log in again.";
        
    }else if ([FBErrorUtility errorCategoryForError:error] == FBErrorCategoryUserCancelled)
    {
        NSLog(@"User cancelled login");
    }else {
        alertTitle = @"Something went wrong dude";
        alertMessage = @"WTF?! try again later...";
        NSLog(@"The error: \n%@", error);
        //        NSLog(@"The error: \n%@", [error localizedDescription]);
    }
    
    if (alertMessage) {
        [[[UIAlertView alloc]initWithTitle:alertTitle
                                   message:alertMessage
                                  delegate:nil
                         cancelButtonTitle:@"Ok"
                         otherButtonTitles:nil, nil]show];
    }
    
}

@end
