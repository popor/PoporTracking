//
//  TrackIosAppDelegate.m
//  PoporTrack
//
//  Created by popor on 09/21/2018.
//  Copyright (c) 2018 popor. All rights reserved.
//

#import "TrackIosAppDelegate.h"

#import "PoporTrack.h"

@implementation TrackIosAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
#if TARGET_IPHONE_SIMULATOR//模拟器
    NSString * iosInjectionPath = @"/Applications/InjectionX.app/Contents/Resources/iOSInjection.bundle";
    if ([[NSFileManager defaultManager] fileExistsAtPath:iosInjectionPath]) {
        [[NSBundle bundleWithPath:iosInjectionPath] load];
    }
#endif
    PoporTrack * track = [PoporTrack share];
    track.controlVcActionSet = [[NSMutableSet alloc] initWithArray:@[@"RootVC1_btAction"]];
    track.vcSet    = [NSMutableSet new];
    // wkq
    [track.controlVcActionSet addObjectsFromArray:@[@"VCWkq1_VCWkq2Action", @"VCWkq1_VCWkq3Action", @"RootVC2_btAction"]];
    [track.vcSet addObjectsFromArray:@[@"VCWkq1", @"VCWkq2", @"VCWkq3"]];
    
    // ahy
    //[track.eventSet addObjectsFromArray:@[]];
    
    
    [track.grEventVcTargetActionSet addObjectsFromArray:@[@"RootVC2_RootVC2Cell_tapGRAction"]];
    
    [track sort];
    
    return YES;
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
