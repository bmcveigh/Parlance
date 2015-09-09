//
//  BMViewController.h
//  Parlance
//
//  Created by Brian McVeigh on 10/30/13.
//  Copyright (c) 2013 Brian McVeigh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BMFontViewController.h"
#import "MFMailComposeViewController.h"
#import "MFMessageComposeViewController.h"
#import "APLAsyncImageActivityItemProvider.h"


@interface BMViewController : UIViewController <UIActionSheetDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UIPopoverControllerDelegate, MFMailComposeViewControllerDelegate, MFMessageComposeViewControllerDelegate>
@property (strong, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) UIFont *font;

@property (strong, nonatomic) IBOutlet UITextField *sizeField;
@property (strong, nonatomic) UIPopoverController *filterPopoverController;
@property float fontSize;
@property (strong, nonatomic) IBOutlet UISlider *slider;
@property (strong, nonatomic) IBOutlet UILabel *fontLabel;
@property (strong, nonatomic) IBOutlet UIButton *pinkButton;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *fontBarButtonItem;
@property (strong, nonatomic) IBOutlet UIPopoverController *popover;

- (IBAction)changeFontSize:(id)sender;
- (IBAction)changeBlack:(id)sender;
- (IBAction)changeRed:(id)sender;
- (IBAction)changeOrange:(id)sender;
- (IBAction)changeYellow:(id)sender;
- (IBAction)changeGreen:(id)sender;
- (IBAction)changeBlue:(id)sender;
- (IBAction)changePurple:(id)sender;
- (IBAction)insertPhoto:(id)sender;
- (IBAction)sliderChanged:(id)sender;
- (IBAction)changePink:(id)sender;
- (IBAction)chooseImage:(id)sender;

- (IBAction)setBold:(id)sender;
- (IBAction)setItalics:(id)sender;
- (IBAction)setUnderline:(id)sender;

- (IBAction)openActivityView:(id)sender; // Opens an activity view so user can send an email or text message


@end
