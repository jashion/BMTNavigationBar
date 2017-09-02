//
//  UIView+ExtendRegion.m
//  BMTNavigationBar
//
//  Created by Jashion on 2017/9/2.
//  Copyright © 2017年 BMu. All rights reserved.
//

#import "UIView+ExtendRegion.h"
#import "BMNavigationBarHeader.h"
#import <objc/runtime.h>

@implementation UIView (ExtendRegion)

#pragma mark - Ovrride methods
+ (void)load {
    Method originalMethod = class_getInstanceMethod([self class], @selector(hitTest:withEvent:));
    Method swizzleMethod = class_getInstanceMethod([self class], @selector(bm_hitTest:withEvent:));
    
    BOOL didAddMethod = class_addMethod([self class], @selector(bm_hitTest:withEvent:), method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
    if (didAddMethod) {
        class_replaceMethod([self class], @selector(hitTest:withEvent:), method_getImplementation(swizzleMethod), method_getTypeEncoding(swizzleMethod));
    } else {
        method_exchangeImplementations(originalMethod, swizzleMethod);
    }
}

- (UIView *)bm_hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    UIView *hitView = [self bm_hitTest: point withEvent: event];
    if (self.extendRegionType == ClickExtendRegion) {
        if (!hitView) {
            for (UIView *subView in self.subviews) {
                CGPoint newPoint = [subView convertPoint: point fromView: self];
                if (CGRectContainsPoint(subView.bounds, newPoint)) {
                    hitView = subView;
                }
            }
        }
    }
    if (isIOS11) {
        if (!hitView && [NSStringFromClass([self class]) isEqualToString: @"_UITAMICAdaptorView"]) {
            for (UIView *subview in self.subviews) {
                if (subview.subviews > 0) {
                    for (UIView *item in subview.subviews) {
                        CGPoint newPoint = [item convertPoint: point fromView: self];
                        if (CGRectContainsPoint(item.bounds, newPoint)) {
                            hitView = item;
                        }
                    }
                }
            }
        }
    }
    return hitView;
}

#pragma mark - Custome methods
- (ExtendRegionType)extendRegionType {
    return [objc_getAssociatedObject([self class], @selector(extendRegionType)) unsignedIntegerValue];
}

- (void)setExtendRegionType:(ExtendRegionType)extendRegionType {
    objc_setAssociatedObject([self class], @selector(extendRegionType), @(extendRegionType), OBJC_ASSOCIATION_ASSIGN);
}

@end
