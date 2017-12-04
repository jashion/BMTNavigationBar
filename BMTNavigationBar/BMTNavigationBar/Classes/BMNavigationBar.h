//
//  BMNavigationBar.h
//  BMTNavigationBar
//
//  Created by Jashion on 2017/11/6.
//  Copyright © 2017年 BMu. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_OPTIONS(NSUInteger, ButtonType) {
    LeftButtonType      =       1,
    RightButtonType     =       1 << 1
};

@interface BMNavigationBar : UIView

@property (nonatomic, assign) ButtonType buttonType;
@property (nonatomic, copy) void(^clickLeftButtonBlock)(UIButton *button);
@property (nonatomic, copy) void(^clickRightButtonBlock)(UIButton *button);

@end
