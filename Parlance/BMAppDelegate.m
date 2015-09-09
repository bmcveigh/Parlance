//
//  BMAppDelegate.m
//  Parlance
//
//  Created by Brian McVeigh on 10/30/13.
//  Copyright (c) 2013 Brian McVeigh. All rights reserved.
//

#import "BMAppDelegate.h"

@implementation BMAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
//    id currentiCloudToken = [[NSFileManager defaultManager] ubiquityIdentityToken];
//    _firstLaunchWithiCloudAvailable = YES;
//    
//    if (currentiCloudToken) {
//        NSData *newTokenData = [NSKeyedArchiver archivedDataWithRootObject:currentiCloudToken];
//        [[NSUserDefaults standardUserDefaults] setObject:newTokenData forKey:@"com.brianmcveigh.Parlance.UbiquityIdentityToken"];
//    } else {
//        [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"com.brianmcveigh.Parlance.UbiquityIdentityToken"];
//    }
//    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector (iCloudAccountAvailabilityChanged:) name:NSUbiquityIdentityDidChangeNotification object:nil];
//    
//    // Inviting the user to use iCloud
//    // (This code is simplified to focus on the sort of language you would display. In an app you intend to provide to customers, you would internationalize this code by using the NSLocalizedString (or similar) macro, rather than using strings directly.)
//    if (currentiCloudToken && _firstLaunchWithiCloudAvailable) {
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Choose Storage Option" message:@"Should documents be stored in iCloud and available on all your devices?" delegate:self cancelButtonTitle:@"Local Only" otherButtonTitles:@"Use iCloud", nil];
//        [alert show];
//    }
//    
//    dispatch_async (dispatch_get_global_queue (DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^(void) {
//        id myUbiquityContainer = [[NSFileManager defaultManager] URLForUbiquityContainerIdentifier:@"com.brianmcveigh.Parlance"];
//        if (myUbiquityContainer != nil) {
//            
//            dispatch_async (dispatch_get_main_queue (), ^(void) {
//                
//            });
//        }
//    });
    return YES;
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
