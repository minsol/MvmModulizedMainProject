//
//  CTMediator+Common.h
//  MvmCTMediator
//
//  Created by Minsol on 2020/6/18.
//  Copyright © 2020 Mvm. All rights reserved.
//

#import "CTMediator.h"

NS_ASSUME_NONNULL_BEGIN

typedef NSString *MvmCommonRequiredKey NS_EXTENSIBLE_STRING_ENUM;

static MvmCommonRequiredKey const MvmCommonKeyTarget  = @"MvmCommonKeyTarget";
static MvmCommonRequiredKey const MvmCommonKeyViewController  = @"MvmCommonKeyViewController";
static MvmCommonRequiredKey const MvmCommonKeyActionName  = @"Common_ViewController";

@interface CTMediator (Common)
/**
 Common ： 通用 VC
 必参：
 */
- (UIViewController *)Mvm_Common_ViewControllerWithParams:(NSDictionary *)params callback:(void(^)(NSString *result))callback;
@end

NS_ASSUME_NONNULL_END
