//
//  BMNavigationBar.m
//  BMTNavigationBar
//
//  Created by Jashion on 2017/11/6.
//  Copyright © 2017年 BMu. All rights reserved.
//

#import "BMNavigationBar.h"
#import "BMNavigationBarHeader.h"
#import "UIView+ExtendRegion.h"

@interface BMNavigationBar()

@property (nonatomic, strong) UIButton *leftButton;
@property (nonatomic, strong) UIButton *rightButton;

@end

@implementation BMNavigationBar

- (instancetype)init {
    self = [super initWithFrame: CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width - NavigationBarTitleViewMargin * 2, 44)];
    if (self) {
        self.extendRegionType = ExtendClickedRegion;
    }
    return self;
}

- (void)willMoveToSuperview:(UIView *)newSuperview {
    [super willMoveToSuperview: newSuperview];
    if (newSuperview) {
        if (self.buttonType & LeftButtonType && !self.leftButton.superview) {
            self.leftButton = [UIButton buttonWithType: UIButtonTypeCustom];
            self.leftButton.backgroundColor = [UIColor blueColor];
            self.leftButton.frame = CGRectMake(- NavigationBarTitleViewMargin, 0, 60, 44);;
            self.leftButton.tag = 0;
            [self.leftButton addTarget: self action: @selector(handleLeftButtonEvent:) forControlEvents: UIControlEventTouchUpInside];
            [self addSubview: self.leftButton];
        }
        if (self.buttonType & RightButtonType && !self.rightButton.superview) {
            self.rightButton = [UIButton buttonWithType: UIButtonTypeCustom];
            self.rightButton.backgroundColor = [UIColor blueColor];
            self.rightButton.frame = CGRectMake(self.frame.size.width + NavigationBarTitleViewMargin - 60, 0, 60, 44);
            self.rightButton.tag = 1;
            [self.rightButton addTarget: self action: @selector(handleRightButtonEvent:) forControlEvents: UIControlEventTouchUpInside];
            [self addSubview: self.rightButton];
        }
    }
}

- (void)handleLeftButtonEvent: (UIButton *)button {
    if (self.clickLeftButtonBlock) {
        self.clickLeftButtonBlock(button);
    }
}

- (void)handleRightButtonEvent: (UIButton *)button {
    if (self.clickRightButtonBlock) {
        self.clickRightButtonBlock(button);
    }
}

@end
