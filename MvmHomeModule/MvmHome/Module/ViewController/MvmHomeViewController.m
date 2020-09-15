//
//  MvmHomeViewController.m
//  MvmHome
//
//  Created by Minsol on 2020/6/17.
//  Copyright © 2020 Mvm. All rights reserved.
//

#import "MvmHomeViewController.h"
#import "CTMediator+MvmMine.h"
#import <MvmFramework/MvmFramework.h>

@interface MvmHomeViewController ()

@end

@implementation MvmHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.blueColor;
    TestObject *obj = [[TestObject alloc]init];
    NSLog(@"%p",obj);
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UIViewController *viewController =[CTMediator.sharedInstance MvmMine_Mine_ViewControllerWithCallback:^(NSString * _Nonnull result) {
        NSLog(@"%@", result);
    }];
    [self.navigationController pushViewController:viewController animated:true];
}

@end
