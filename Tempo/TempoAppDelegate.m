//
//  AppDelegate.m
//  Tempo
//
//  Created by Steven Lyons on 2/23/14.
//  Copyright (c) 2014 Lyonspaw Studios. All rights reserved.
//

#import <Parse/Parse.h>
#import "TempoAppDelegate.h"
#import <FacebookSDK/FacebookSDK.h>

@implementation TempoAppDelegate

/*
@synthesize managedObjectContext = _managedObjectContext;
@synthesize managedObjectModel = _managedObjectModel;
@synthesize persistentStoreCoordinator = _persistentStoreCoordinator;
*/

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    [Parse setApplicationId:@"DEt9Rpd7lo5jGQIpJGDqmnGIYEbhF28hCOo9Xqz2"
                  clientKey:@"og7Z6ahdtIb0HX1Ko7y5U84UT7hX8u16PVXIYaCA"];
    
    [PFAnalytics trackAppOpenedWithLaunchOptions:launchOptions];
    [PFFacebookUtils initializeFacebook];
    
    return YES;

}

- (BOOL) application:(UIApplication *)application
	   handleOpenURL:(NSURL *)url {
    return [PFFacebookUtils handleOpenURL:url];
}
- (BOOL)application:(UIApplication *)application
			openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
		 annotation:(id)annotation {
    return [PFFacebookUtils handleOpenURL:url];
}

@end

