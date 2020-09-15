//
//  CTMediator+MvmHome.h
//  MvmHome
//
//  Created by Minsol on 2020/6/17.
//  Copyright © 2020 Mvm. All rights reserved.
//

#import "CTMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (MvmMine)
- (UIViewController *)MvmMine_Mine_ViewControllerWithCallback:(void(^)(NSString *result))callback;
@end

NS_ASSUME_NONNULL_END
