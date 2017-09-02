//
//  BMNavigationBarHeader.h
//  BMTNavigationBar
//
//  Created by Jashion on 2017/9/2.
//  Copyright © 2017年 BMu. All rights reserved.
//

#ifndef BMNavigationBarHeader_h
#define BMNavigationBarHeader_h

#define isIOS11 [[UIDevice currentDevice].systemVersion floatValue] >= 11

/**
 导航栏titleView尽可能充满屏幕，余留的边距
 iPhone5s/iPhone6(iOS8/iOS9/iOS10) margin = 8
 iPhone6p(iOS8/iOS9/iOS10) margin = 12
 
 iPhone5s/iPhone6(iOS11) margin = 16
 iPhone6p(iOS11) margin = 20
 */
#define NavigationBarTitleViewMargin \
(isIOS11? ([UIScreen mainScreen].bounds.size.width > 375 ? 20 : 16) : \
([UIScreen mainScreen].bounds.size.width > 375 ? 12 : 8))

/**
 导航栏左右navigationBarItem余留的边距
 iPhone5s/iPhone6(iOS8/iOS9/iOS10) margin = 16
 iPhone6p(iOS8/iOS9/iOS10) margin = 20
 */
#define NavigationBarItemMargin ([UIScreen mainScreen].bounds.size.width > 375 ? 20 : 16)

/**
 导航栏titleView和navigationBarItem之间的间距
 iPhone5s/iPhone6/iPhone6p(iOS8/iOS9/iOS10) iterItemSpace = 6
 */
#define NavigationBarInterItemSpace 6

#endif /* BMNavigationBarHeader_h */
