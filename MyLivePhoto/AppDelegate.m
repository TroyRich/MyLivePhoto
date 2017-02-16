//
//  AppDelegate.m
//  MyLivePhoto
//
//  Created by Troy-Wu on 14/02/2017.
//  Copyright © 2017 com.LittleTroy. All rights reserved.
//

#import "AppDelegate.h"
#import "WYXMainTabViewController.h"
#import "WYXLibraryViewController.h"
#import "WYXDocumentViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc]
                   initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];

    
    WYXMainTabViewController *rootVC = [[WYXMainTabViewController alloc] init];
    
    WYXLibraryViewController *libraryVC = [[WYXLibraryViewController alloc] init];
        libraryVC.title = @"作品";
    libraryVC.view.backgroundColor = [UIColor redColor];
    
    WYXDocumentViewController *documentVC =[[WYXDocumentViewController alloc] init];
     documentVC.title = @"素材库";
    documentVC.view.backgroundColor = [UIColor greenColor];
    

    
//    UIBarButtonItem *workBtn = [UIBarButtonItem alloc]initWithTitle:@"作品" style:UIBarButtonItemStylePlain target:self action:@selector(tabWroksBtn)];
//    UIBarButtonItem *libraryBtn = [UIBarButtonItem alloc]initWithTitle:@"资料库" style:UIBarButtonItemStylePlain target:self action:@selector(tabWroksBtn)];
//    rootVC.toolbarItems = [ ];
//    rootVC.title = @"资料库";
    
    NSArray *arr = @[libraryVC,documentVC];
    [rootVC setViewControllers:arr animated:YES];
    rootVC.view.frame = [UIApplication sharedApplication].keyWindow.bounds;
    UINavigationController *nav = [[UINavigationController alloc]
                                   initWithRootViewController:rootVC];
    
    
     self.window.rootViewController = nav;
    
    [self.window makeKeyAndVisible];

    return YES;
}

- (void)tabWroksBtn:(UIBarButtonItem *)btn
{
    NSLog(@"作品按钮被点击了");
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
