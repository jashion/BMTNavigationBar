//
//  ViewController.m
//  BMTNavigationBar
//
//  Created by Jashion on 2017/9/2.
//  Copyright © 2017年 BMu. All rights reserved.
//

#import "ViewController.h"
#import "UIView+ExtendRegion.h"
#import "BMNavigationBarHeader.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat width = CGRectGetWidth(self.view.frame);
    
    UIView *navigationBarView = [[UIView alloc] initWithFrame: CGRectMake(0, 0, width - NavigationBarTitleViewMargin * 2, 44)];
    navigationBarView.backgroundColor = [UIColor orangeColor];
    navigationBarView.extendRegionType = ClickExtendRegion;
    self.navigationItem.titleView = navigationBarView;
    
    UIButton *leftButton = [UIButton buttonWithType: UIButtonTypeCustom];
    leftButton.backgroundColor = [UIColor blueColor];
    leftButton.frame = CGRectMake(- NavigationBarTitleViewMargin, 0, 60, 44);
    leftButton.tag = 0;
    [leftButton addTarget: self action: @selector(click:) forControlEvents: UIControlEventTouchUpInside];
    [navigationBarView addSubview: leftButton];
    
    UIButton *rightButton = [UIButton buttonWithType: UIButtonTypeCustom];
    rightButton.backgroundColor = [UIColor blueColor];
    rightButton.frame = CGRectMake(navigationBarView.frame.size.width + NavigationBarTitleViewMargin - 60, 0, 60, 44);
    rightButton.tag = 1;
    [rightButton addTarget: self action: @selector(click:) forControlEvents: UIControlEventTouchUpInside];
    [navigationBarView addSubview: rightButton];
}

- (void)click: (UIButton *)button {
    if (button.tag == 0) {
        NSLog(@"点击了左按钮");
    } else {
        NSLog(@"点击了右按钮");
    }
}

@end
