//
//  AppDelegate.m
//  Thor2000
//
//  Created by 戴十三 on 2020/5/15.
//  Copyright © 2020 戴十三. All rights reserved.
//

#import "AppDelegate.h"
#import "THMainViewController.h"

#define kFullScreenWidth           ([UIScreen mainScreen].bounds.size.width)
#define kFullScreenHeight          ([UIScreen mainScreen].bounds.size.height)

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self toHome];
    return YES;
}

- (void)toHome{
    THMainViewController *vc = [THMainViewController new];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    self.window = [[UIWindow alloc] initWithFrame:CGRectMake(0, 0, kFullScreenWidth, kFullScreenHeight)];
    [self.window setRootViewController:nav];
    [self.window makeKeyAndVisible];
}


@end
