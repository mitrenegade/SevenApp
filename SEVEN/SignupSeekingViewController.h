//
//  SignupSeekingViewController.h
//  SEVEN
//
//  Created by Bobby Ren on 7/4/14.
//  Copyright (c) 2014 SEVEN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CommonStyledViewController.h"

@interface SignupSeekingViewController : CommonStyledViewController

@property (weak, nonatomic) IBOutlet UIButton *buttonGuy;
@property (weak, nonatomic) IBOutlet UIButton *buttonGirl;
@property (weak, nonatomic) IBOutlet UIButton *buttonBoth;

- (IBAction)didClickButton:(id)sender;

@end
