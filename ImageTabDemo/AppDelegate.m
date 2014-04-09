//
//  AppDelegate.m
//  ImageTabDemo
//
//  Created by 崇史 on 2014/04/09.
//  Copyright (c) 2014 崇史. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];

    [[UITabBar appearance] setBackgroundImage:[UIImage imageNamed:@"trans.png"]]; // tabの背景透過
    [[UITabBar appearance] setShadowImage:[UIImage imageNamed:@"trans.png"]]; // tabの上の線がでないように透過
    // タイトル文字が設定されても見えないようにするため、文字色を透過
    [[UITabBarItem appearance] setTitleTextAttributes:@{
            NSForegroundColorAttributeName:[UIColor clearColor]
    } forState:UIControlStateNormal];
    UIViewController *controller1 = [[UIViewController alloc]init] ;
    UIViewController *controller2 = [[UIViewController alloc]init] ;
    UITabBarController *tabBarController = [[UITabBarController alloc]init] ;

    // controller1
    [controller1.tabBarItem setSelectedImage:[[UIImage imageNamed:@"tab1_on.png"]
            imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
    ];
    [controller1.tabBarItem setImage:[[UIImage imageNamed:@"tab1_off.png"]
            imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
    ];
    [controller1.tabBarItem setImageInsets:UIEdgeInsetsMake(5.5,0,-5.5,0)] ; // 表示位置を調整

    // controller2
    [controller2.tabBarItem setSelectedImage:[[UIImage imageNamed:@"tab2_on.png"]
            imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
    ];
    [controller2.tabBarItem setImage:[[UIImage imageNamed:@"tab2_off.png"]
            imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
    ];
    [controller2.tabBarItem setImageInsets:UIEdgeInsetsMake(5.5,0,-5.5,0)] ; // 表示位置を調整

    [tabBarController setViewControllers:@[controller1,controller2]];
    self.window.rootViewController = tabBarController ;

    [self.window makeKeyAndVisible];
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