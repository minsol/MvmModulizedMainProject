//
//  ViewController.m
//  MvmHomeModule
//
//  Created by Minsol on 2020/6/17.
//  Copyright © 2020 Mvm. All rights reserved.
//

#import "ViewController.h"
#import "MvmHomeViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UIViewController *viewController =[MvmHomeViewController new];
    [self.navigationController pushViewController:viewController animated:true];
}

@end
