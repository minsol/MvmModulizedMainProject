//
//  CTMediator+MvmHome.m
//  MvmHome
//
//  Created by Minsol on 2020/6/17.
//  Copyright © 2020 Mvm. All rights reserved.
//

#import "CTMediator+MvmHome.h"

@implementation CTMediator (MvmHome)

- (UIViewController *)MvmHome_Home_ViewControllerWithParams:(NSDictionary *)params callback:(void(^)(NSString *result))callback;
{
    NSMutableDictionary *mutableParams = [[NSMutableDictionary alloc] initWithDictionary:params];
    mutableParams[@"callback"] = callback;
    return [self performTarget:@"MvmHome" action:@"Home_ViewController" params:mutableParams shouldCacheTarget:NO];
}

- (UIViewController *)MvmHome_Detail_ViewControllerWithParams:(NSDictionary *)params callback:(void(^)(NSString *result))callback{
    NSMutableDictionary *mutableParams = [[NSMutableDictionary alloc] initWithDictionary:params];
    mutableParams[@"callback"] = callback;
    return [self performTarget:@"MvmHome" action:@"Detail_ViewController" params:mutableParams shouldCacheTarget:NO];
}


@end
