//
//  Target_MvmHome.m
//  MvmHome
//
//  Created by Minsol on 2020/6/17.
//  Copyright © 2020 Mvm. All rights reserved.
//

#import "Target_MvmMine.h"
#import "MvmMineViewController.h"

@implementation Target_MvmMine
- (UIViewController *)Action_Mine_ViewController:(NSDictionary *)params
{
    typedef void (^CallbackType)(NSString *);
    CallbackType callback = params[@"callback"];
    if (callback) {
        callback(@"success");
    }
    MvmMineViewController *viewController = [[MvmMineViewController alloc] init];
    return viewController;
}
@end
