//
//  ViewController.m
//  BMTNavigationBar
//
//  Created by Jashion on 2017/9/2.
//  Copyright © 2017年 BMu. All rights reserved.
//

#import "ViewController.h"
#import "BMNavigationBar.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    BMNavigationBar *bmBar = [BMNavigationBar new];
    bmBar.buttonType = LeftButtonType | RightButtonType;
    bmBar.clickLeftButtonBlock = ^(UIButton *button){
        NSLog(@"点击了左按钮");
    };
    bmBar.clickRightButtonBlock = ^(UIButton *button){
        NSLog(@"点击了右按钮");
    };
    self.navigationItem.titleView = bmBar;
}

@end
