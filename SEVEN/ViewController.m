//
//  ViewController.m
//  SEVEN
//
//  Created by Bobby Ren on 7/2/14.
//  Copyright (c) 2014 SEVEN. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.buttonSignup.layer setBorderColor:[COL_BLUE CGColor]];
    [self.buttonSignup.layer setBorderWidth:3];
    [self.buttonSignup.layer setCornerRadius:self.buttonSignup.frame.size.width/2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)bypassLogin {
    [self performSegueWithIdentifier:@"GoToMainView" sender:self];
}
@end
