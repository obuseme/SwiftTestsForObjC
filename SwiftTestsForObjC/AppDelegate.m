//
//  AppDelegate.m
//  SwiftTestsForObjC
//
//  Created by Andy Obusek on 3/23/17.
//
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [[NSUserDefaults standardUserDefaults] setObject:@"Johnny Appleseed" forKey:@"name"];
    [[NSUserDefaults standardUserDefaults] setObject:@"jappleseed@apple.com" forKey:@"email"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    return YES;
}

@end
