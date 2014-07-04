//
//  SignupNameViewController.h
//  SEVEN
//
//  Created by Bobby Ren on 7/2/14.
//  Copyright (c) 2014 SEVEN. All rights reserved.
//

#import "SignupNameViewController.h"

@interface SignupNameViewController ()

@end

@implementation SignupNameViewController

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

    [PFUser logOut];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)didClickButton:(id)sender {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    if ([self.inputUsername.text length]) {
        [self createUser];
    }
    return YES;
}

-(void)createUser {
    [PFAnonymousUtils logInWithBlock:^(PFUser *user, NSError *error) {
        user.username = self.inputUsername.text;

        // create userInfo
        if (user[@"userInfo"]) {
            _appDelegate.currentUserInfo = user[@"userInfo"];
            [self performSegueWithIdentifier:@"SignupGoToEmail" sender:self];
        }
        else {
            [UserInfo initParseObjectWithDictionary:nil completion:^(id object) {
                _appDelegate.currentUserInfo = (UserInfo *)object;
                [_appDelegate.currentUserInfo setUser:user];

                PFRelation *relation = [user relationForKey:@"userInfo"];
                [relation addObject:_appDelegate.currentUserInfo.pfObject];
                [user saveInBackground];

                [self performSegueWithIdentifier:@"SignupGoToEmail" sender:self];
            }];
       }

    }];
}

@end