//
//  CTMediator+MvmHome.m
//  MvmHome
//
//  Created by Minsol on 2020/6/17.
//  Copyright © 2020 Mvm. All rights reserved.
//

#import "CTMediator+MvmMine.h"

@implementation CTMediator (MvmMine)

- (UIViewController *)MvmMine_Mine_ViewControllerWithCallback:(void (^)(NSString *))callback
{
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"callback"] = callback;
    return [self performTarget:@"MvmMine" action:@"Mine_ViewController" params:params shouldCacheTarget:NO];
}
@end
