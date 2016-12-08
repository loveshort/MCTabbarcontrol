//
//  AppDelegate.m
//  MCTabbarControl
//
//  Created by mac on 16/8/24.
//  Copyright © 2016年 GMC. All rights reserved.
//

#import "AppDelegate.h"
#import "MCTabbarControl/MCTabbarControl.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThreeViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    FirstViewController *first = [[FirstViewController alloc] init];
    UINavigationController *navigation = [[UINavigationController alloc] initWithRootViewController:first];
    
    SecondViewController *second = [[SecondViewController alloc] init];
    UINavigationController *secondNavigation = [[UINavigationController alloc] initWithRootViewController:second];
    
    ThreeViewController *three = [[ThreeViewController alloc] init];
    UINavigationController *threeNavigation = [[UINavigationController alloc] initWithRootViewController:three];
    
    MCTabbarControl *tabBar = [[MCTabbarControl alloc] init];
    tabBar.viewControllers = @[navigation,secondNavigation,threeNavigation];
    self.window.rootViewController =  tabBar;
    return YES;
}

@end
