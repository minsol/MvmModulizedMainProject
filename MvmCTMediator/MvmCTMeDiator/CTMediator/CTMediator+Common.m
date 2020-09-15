//
//  CTMediator+Common.m
//  MvmCTMediator
//
//  Created by Minsol on 2020/6/18.
//  Copyright © 2020 Mvm. All rights reserved.
//

#import "CTMediator+Common.h"

@implementation CTMediator (Common)

/**
 Common ： 通用 VC
 必参：
 */
- (UIViewController *)Mvm_Common_ViewControllerWithParams:(NSDictionary *)params callback:(void(^)(NSString *result))callback{
    NSAssert([params.allKeys containsObject:MvmCommonKeyTarget] &&
             [params.allKeys containsObject:MvmCommonKeyViewController], @"异常数据");
    NSMutableDictionary *mutableParams = [[NSMutableDictionary alloc] initWithDictionary:params];
    mutableParams[@"callback"] = callback;
    return [self performTarget:params[MvmCommonKeyTarget] action:MvmCommonKeyActionName params:mutableParams shouldCacheTarget:NO];
}

@end
