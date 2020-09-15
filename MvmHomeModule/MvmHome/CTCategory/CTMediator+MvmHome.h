//
//  CTMediator+MvmHome.h
//  MvmHome
//
//  Created by Minsol on 2020/6/17.
//  Copyright © 2020 Mvm. All rights reserved.
//

#import "CTMediator.h"

NS_ASSUME_NONNULL_BEGIN




/**
 这里暴露出来的是 MvmHome 的入口方法，对应的实现是在 Target_MvmHome 里面
 如：
 MvmHome_Home_ViewControllerWithParams
 =>
 [Target_MvmHome performSelector:Action_Category_ViewController withObject:params];
 */

@interface CTMediator (MvmHome)


- (UIViewController *)MvmHome_Home_ViewControllerWithParams:(NSDictionary *)params callback:(void(^)(NSString *result))callback;

- (UIViewController *)MvmHome_Detail_ViewControllerWithParams:(NSDictionary *)params callback:(void(^)(NSString *result))callback;




@end

NS_ASSUME_NONNULL_END
