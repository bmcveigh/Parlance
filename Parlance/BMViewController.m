//
//  BMViewController.m
//  Parlance
//
//  Created by Brian McVeigh on 10/30/13.
//  Copyright (c) 2013 Brian McVeigh. All rights reserved.
//

#import "BMViewController.h"
#import "APLAsyncImageActivityItemProvider.h"
#import "APLProfile.h"
#import <QuartzCore/QuartzCore.h>
#import <MessageUI/MessageUI.h>


@interface BMViewController ()
{
    UIImage *imageToAdd;
}

@property (strong, nonatomic) APLProfile *profile;
@property (strong, nonatomic) UIPopoverController *activityPopover;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *shareItem;




@end

@implementation BMViewController

@synthesize font;
@synthesize fontSize;
@synthesize fontBarButtonItem;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _textView.layer.borderColor = [[UIColor grayColor] CGColor];
    _textView.layer.borderWidth = 0.5f;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)setBold:(id)sender {
    [_textView toggleBoldface:nil];
}

- (IBAction)setItalics:(id)sender {
    [_textView toggleItalics:nil];
}

- (IBAction)setUnderline:(id)sender {
    [_textView toggleUnderline:nil];
}

- (IBAction)changeFontSize:(id)sender {
    fontSize = [_sizeField.text floatValue];
    font = [UIFont fontWithName:@"Times New Roman" size:fontSize];
    _textView.font = font;
}

- (IBAction)changeBlack:(id)sender {
    [_textView setTextColor:[UIColor blackColor]];
}

- (IBAction)changeRed:(id)sender {
    [_textView setTextColor:[UIColor redColor]];

}

- (IBAction)changeOrange:(id)sender {
    [_textView setTextColor:[UIColor orangeColor]];

}

- (IBAction)changeYellow:(id)sender {
    [_textView setTextColor:[UIColor yellowColor]];

}

- (IBAction)changeGreen:(id)sender {
    [_textView setTextColor:[UIColor greenColor]];

}

- (IBAction)changeBlue:(id)sender {
    [_textView setTextColor:[UIColor blueColor]];

}

- (IBAction)changePurple:(id)sender {
    [_textView setTextColor:[UIColor purpleColor]];

}

- (IBAction)insertPhoto:(id)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Select an Option" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"Take Photo or Video", @"Choose Existing", nil];
    [actionSheet showInView:self.view];
    
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    //Get the name of the current pressed button and take action
    NSString *buttonTitle = [actionSheet buttonTitleAtIndex:buttonIndex];
    if  ([buttonTitle isEqualToString:@"Take Photo or Video"]) {
        [self takePicture:nil];
    }
    if ([buttonTitle isEqualToString:@"Choose Existing"]) {
        [self chooseImage:nil];
    }
}

- (IBAction)sliderChanged:(id)sender {
    [_sizeField setText:[NSString stringWithFormat:@"%f", [_slider value]]];
    [self changeFontSize:nil];
    
}

- (IBAction)changePink:(id)sender {
    [_textView setTextColor:[_pinkButton backgroundColor]];
}

- (void)chooseImage:(id)sender {
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:picker animated:YES completion:nil];
}
    
- (void)takePicture:(id)sender {
    //Uses the camera only if it's a device
    if (!TARGET_IPHONE_SIMULATOR)
    {
        UIImagePickerController *picker = [[UIImagePickerController alloc] init];
        picker.delegate = self;
        picker.sourceType = UIImagePickerControllerSourceTypeCamera;
        picker.cameraDevice = UIImagePickerControllerCameraDeviceRear;
        [self presentViewController:picker animated:YES completion:nil];
    }
    else
    {
        NSLog(@"The device must be an iPhone simulator!");
    }
}



#pragma mark - Image Picker Delegate
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    [picker dismissViewControllerAnimated:YES completion:nil];
    imageToAdd = [UIImage imageNamed:[info objectForKey:@"UIImagePickerControllerOriginalImage"]];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissViewControllerAnimated:YES completion:nil];
}

// Dismisses the keyboard when the user clicks outside of the text field
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [_textView resignFirstResponder];
    [_sizeField resignFirstResponder];
}


- (IBAction)openActivityView:(id)sender {
    //Create activity items
    NSMutableArray *activityItems = [NSMutableArray arrayWithObjects:_textView.text, nil];
//      NSMutableArray *activityTypes = [NSMutableArray arrayWithObjects:UIActivityTypeMessage, UIActivityTypeMail, nil];
    
    
    //Use delegation to monitor the progress of the item method
    
    //Create an activity view controller with the activity provider item. UIActivityItemProvider (AsyncImageActivityItemProvider's superclass) conforms to the UIActivityItemSource protocol
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
    
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        //iPhone, present activity view controller as is
        [self presentViewController:activityViewController animated:YES completion:nil];
    }
}

// The mail composer view controller delegate method.
- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - AsyncImageActivityItemProviderDelegate

- (void)imageActivityItemProviderPreprocessingDidBegin:(APLAsyncImageActivityItemProvider *)imageActivityItemProvider
{
}

- (void)imageActivityItemProvider:(APLAsyncImageActivityItemProvider *)imageActivityItemProvider preprocessingProgressDidUpdate:(float)progress
{
}

- (void)imageActivityItemProviderPreprocessingDidEnd:(APLAsyncImageActivityItemProvider *)imageActivityItemProvider
{
}



@end
