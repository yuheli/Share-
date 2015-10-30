//
//  AppDelegate.m
//  Share分享
//
//  Created by ios－04 on 15/10/30.
//  Copyright © 2015年 wwz. All rights reserved.
//

#import "AppDelegate.h"
#import "UMSocial.h"
#import "UMSocialWechatHandler.h"
#define AppKey @"5632e69ae0f55a6a5200000c"

#define APPId @"wx945b58aef3a271f0"
#define APPSecret  @"0ae78dd42761fd9681b04833c79a857b"
@interface AppDelegate ()

@end

@implementation AppDelegate

//ios9增加了代码压缩功能ENABLE_BITCODE,此功能很多第三方库不支持，手动关闭buildSetting - ENABLE_BITCODE->NO
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//5632e69ae0f55a6a5200000c 友盟统计中的Key
    [UMSocialData setAppKey:AppKey];
    [UMSocialWechatHandler setWXAppId:APPId appSecret:APPSecret url:@"http://www.umeng.com/social"];
    return YES;
}

//实现以下两个代码回调，
//-(BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url
//{
//    return [UMSocialSnsService handleOpenURL:url];
//}
//
//- (BOOL)application:(UIApplication *)application
//            openURL:(NSURL *)url
//  sourceApplication:(NSString *)sourceApplication
//         annotation:(id)annotation
//{
//    return  [UMSocialSnsService handleOpenURL:url];
//}

- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url
{
    return  [UMSocialSnsService handleOpenURL:url];
}
- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation
{
    return  [UMSocialSnsService handleOpenURL:url];
}
- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
