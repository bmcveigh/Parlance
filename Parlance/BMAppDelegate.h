//
//  BMAppDelegate.h
//  Parlance
//
//  Created by Brian McVeigh on 10/30/13.
//  Copyright (c) 2013 Brian McVeigh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BMAppDelegate : UIResponder <UIApplicationDelegate, UIAlertViewDelegate>

@property (strong, nonatomic) UIWindow *window;
@property BOOL firstLaunchWithiCloudAvailable;

@end
