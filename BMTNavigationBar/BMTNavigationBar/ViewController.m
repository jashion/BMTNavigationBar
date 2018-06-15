//
//  ViewController.m
//  BMTNavigationBar
//
//  Created by Jashion on 2017/9/2.
//  Copyright © 2017年 BMu. All rights reserved.
//

#import "ViewController.h"
#import "BMNavigationBar.h"
#import "BMNavigationBarHeader.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UIView *bmBar = [[UIView alloc] initWithFrame: CGRectMake(0, 0, BM_ScreenWidth, BM_NavigationBarHeight)];
//    bmBar.backgroundColor = [UIColor blueColor];
//    self.navigationItem.titleView = bmBar;
    
    UIButton *leftBtn = [UIButton buttonWithType: UIButtonTypeCustom];
    leftBtn.backgroundColor = [UIColor yellowColor];
    leftBtn.frame = CGRectMake(0, 0, 44, 44);
    UIButton *leftBtn2 = [UIButton buttonWithType: UIButtonTypeCustom];
    leftBtn2.backgroundColor = [UIColor greenColor];
    leftBtn2.frame = CGRectMake(0, 0, 44, 44);
    
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithCustomView: leftBtn];
    UIBarButtonItem *leftItem2 = [[UIBarButtonItem alloc] initWithCustomView: leftBtn2];
    self.navigationItem.leftBarButtonItems = @[leftItem, leftItem2];
    
    UIButton *rightBtn = [UIButton buttonWithType: UIButtonTypeCustom];
    rightBtn.backgroundColor = [UIColor orangeColor];
    rightBtn.frame = CGRectMake(0, 0, 44, 44);
    UIButton *rightBtn2 = [UIButton buttonWithType: UIButtonTypeCustom];
    rightBtn2.backgroundColor = [UIColor purpleColor];
    rightBtn2.frame = CGRectMake(0, 0, 44, 44);
    
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithCustomView: rightBtn];
    UIBarButtonItem *rightItem2 = [[UIBarButtonItem alloc] initWithCustomView: rightBtn2];
//    self.navigationItem.rightBarButtonItems = @[rightItem, rightItem2];
//    BMNavigationBar *bmBar = [BMNavigationBar new];
//    bmBar.buttonType = LeftButtonType | RightButtonType;
//    bmBar.clickLeftButtonBlock = ^(UIButton *button){
//        NSLog(@"点击了左按钮");
//    };
//    bmBar.clickRightButtonBlock = ^(UIButton *button){
//        NSLog(@"点击了右按钮");
//    };
//    self.navigationItem.titleView = bmBar;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear: animated];
    
}

@end
