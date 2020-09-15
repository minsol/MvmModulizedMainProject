//
//  ViewController.m
//  MvmModulizedMainProject
//
//  Created by Minsol on 2020/6/17.
//  Copyright © 2020 Mvm. All rights reserved.
//

#import "ViewController.h"
#import "CTMediator+MvmHome.h"
#import "CTMediator+MvmMine.h"
#import "CTMediator+Common.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)showHomePage:(UIButton*)sender{
//    UIViewController *viewController =[CTMediator.sharedInstance MvmHome_Home_ViewControllerWithParams:@{@"title":@"home"} callback:^(NSString * _Nonnull result) {
//        NSLog(@"%@", result);
//    }];
    
    
//    UIViewController *viewController =[CTMediator.sharedInstance MvmHome_Detail_ViewControllerWithParams:@{@"title":@"Detail"} callback:^(NSString * _Nonnull result) {
//        NSLog(@"%@", result);
//    }];
    
    UIViewController *viewController =[CTMediator.sharedInstance Mvm_Common_ViewControllerWithParams:@{MvmCommonKeyTarget:@"MvmHome",MvmCommonKeyViewController:@"MvmHomeViewController"} callback:^(NSString * _Nonnull result) {
        NSLog(@"%@", result);
    }];
    [self.navigationController pushViewController:viewController animated:true];
}

- (IBAction)showMinePage:(UIButton*)sender{
    UIViewController *viewController =[CTMediator.sharedInstance MvmMine_Mine_ViewControllerWithCallback:^(NSString * _Nonnull result) {
        NSLog(@"%@", result);
    }];
    [self.navigationController pushViewController:viewController animated:true];
}

@end
