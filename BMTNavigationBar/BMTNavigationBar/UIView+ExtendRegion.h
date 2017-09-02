//
//  UIView+ExtendRegion.h
//  BMTNavigationBar
//
//  Created by Jashion on 2017/9/2.
//  Copyright © 2017年 BMu. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, ExtendRegionType) {
    DefaultExtendRegion             =   0,
    ClickExtendRegion               =   1
};

@interface UIView (ExtendRegion)

@property (nonatomic, assign) ExtendRegionType extendRegionType;

@end
