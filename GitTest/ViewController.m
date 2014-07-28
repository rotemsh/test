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
//this is another test

//another one


//Branch test

//diz #1

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"toLoggedIn"]) {
        NSLog(@"Yea");
    
    }
}

- (IBAction)loginButton:(id)sender {
    
    [self performSegueWithIdentifier:@"toLoggedIn" sender:self];
}
@end
