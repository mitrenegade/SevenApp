//
//  SignupSeekingViewController.m
//  SEVEN
//
//  Created by Bobby Ren on 7/4/14.
//  Copyright (c) 2014 SEVEN. All rights reserved.
//

#import "SignupSeekingViewController.h"

@interface SignupSeekingViewController ()

@end

@implementation SignupSeekingViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)didClickButton:(id)sender {
    if ((UIButton *)sender == self.buttonGuy) {
        [[PFUser currentUser] setObject:@(MALE) forKey:@"seeking"];
    }
    else if ((UIButton *)sender == self.buttonGirl) {
        [[PFUser currentUser] setObject:@(FEMALE) forKey:@"seeking"];
    }
    else if ((UIButton *)sender == self.buttonBoth) {
        [[PFUser currentUser] setObject:@(BOTH) forKey:@"seeking"];
    }
    [[PFUser currentUser] saveInBackground];

    [self performSegueWithIdentifier:@"SignupGoToLocation" sender:self];
}
@end
