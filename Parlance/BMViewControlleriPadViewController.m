//
//  BMViewControlleriPadViewController.m
//  Parlance
//
//  Created by Brian McVeigh on 10/31/13.
//  Copyright (c) 2013 Brian McVeigh. All rights reserved.
//

#import "BMViewControlleriPadViewController.h"
#import "BMImagePopoverTableViewControlleriPad.h"

@interface BMViewControlleriPadViewController ()

@end

@implementation BMViewControlleriPadViewController

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

- (IBAction)insertPhotoiPad:(id)sender {
    BMImagePopoverTableViewControlleriPad *controller = [[BMImagePopoverTableViewControlleriPad alloc] initWithStyle:UITableViewStylePlain];
    
    if (_popover == nil)
    {
        self.popover = [[UIPopoverController alloc] initWithContentViewController:controller];
        self.popover.delegate = self;
        [self.popover presentPopoverFromBarButtonItem:self.fontBarButton permittedArrowDirections:UIPopoverArrowDirectionAny animated:NO];
    }
    else {
        //The popover is showing. Hide it.
        [_popover dismissPopoverAnimated:YES];
        _popover = nil;
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
