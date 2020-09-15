//
//  Target_MvmHome.m
//  MvmHome
//
//  Created by Minsol on 2020/6/17.
//  Copyright © 2020 Mvm. All rights reserved.
//

#import "Target_MvmHome.h"
#import "MvmHomeViewController.h"

@implementation Target_MvmHome
- (UIViewController *)Action_Home_ViewController:(NSDictionary *)params{
    NSAssert([params.allKeys containsObject:@"title"], @"异常数据");
    typedef void (^CallbackType)(NSString *);
    CallbackType callback = params[@"callback"];
    if (callback) {
        callback(@"success");
    }
    MvmHomeViewController *viewController = [[MvmHomeViewController alloc] init];
    viewController.title = params[@"title"];
    return viewController;
}

- (UIViewController *)Action_Detail_ViewController:(NSDictionary *)params{
    NSAssert([params.allKeys containsObject:@"title"], @"异常数据");
    typedef void (^CallbackType)(NSString *);
    CallbackType callback = params[@"callback"];
    if (callback) {
        callback(@"success");
    }
    MvmHomeViewController *viewController = [[MvmHomeViewController alloc] init];
    viewController.title = params[@"title"];
    return viewController;
}


- (UIViewController *)Action_Common_ViewController:(NSDictionary *)params{
    typedef void (^CallbackType)(NSString *);
    CallbackType callback = params[@"callback"];
    if (callback) {
        callback(@"success");
    }
    NSString *controllerClassName = params[@"MvmCommonKeyViewController"];
    UIViewController *viewController = [[NSClassFromString(controllerClassName) alloc] init];
    return viewController;
}

@end
