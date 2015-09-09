//
//  BMViewControlleriPadViewController.h
//  Parlance
//
//  Created by Brian McVeigh on 10/31/13.
//  Copyright (c) 2013 Brian McVeigh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BMViewControlleriPadViewController : UIViewController <UIPopoverControllerDelegate>

@property (nonatomic, strong) IBOutlet UIPopoverController *popover;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *fontBarButton;

- (IBAction)insertPhotoiPad:(id)sender;

@end
