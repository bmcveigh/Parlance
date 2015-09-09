//
//  BMFontViewController.h
//  Parlance
//
//  Created by Brian McVeigh on 10/31/13.
//  Copyright (c) 2013 Brian McVeigh. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol BMFontViewControllerDelegate;


@interface BMFontViewController : UITableViewController

@property (nonatomic, weak) id <BMFontViewControllerDelegate> delegate;
- (IBAction)save:(id)sender;

@end

@protocol BMFontViewControllerDelegate
- (void)addFontViewController:(BMFontViewController *)controller didFinishWithSave:(BOOL)save;
@end