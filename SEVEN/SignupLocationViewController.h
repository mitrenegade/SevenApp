//
//  SignupLocationViewController.h
//  SEVEN
//
//  Created by Bobby Ren on 7/4/14.
//  Copyright (c) 2014 SEVEN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CommonStyledViewController.h"
#import <MapKit/MapKit.h>

@interface SignupLocationViewController : CommonStyledViewController <MKMapViewDelegate, UIGestureRecognizerDelegate>
{
    BOOL isFirstUpdate;
    CLLocationCoordinate2D centerLocation;

    NSString *city;
    NSString *state;
    NSString *country;
}

@property (weak, nonatomic) IBOutlet UIButton *buttonNo;
@property (weak, nonatomic) IBOutlet UIButton *buttonYes;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (nonatomic, weak) IBOutlet UILabel *labelCurrentLocation;
@property (nonatomic, weak) IBOutlet UIView *pin;

@end
