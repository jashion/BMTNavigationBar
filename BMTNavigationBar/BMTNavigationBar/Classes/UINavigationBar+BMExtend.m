//
//  UINavigationBar+BMExtend.m
//  BMTNavigationBar
//
//  Created by Jashion on 08/02/2018.
//  Copyright © 2018 BMu. All rights reserved.
//

#import "UINavigationBar+BMExtend.h"
#import "BMUtils.h"
#import "BMNavigationBarHeader.h"

@implementation UINavigationBar (BMExtend)

+ (void)load {
    swizzleInstanceMethod([self class], @selector(layoutSubviews), @selector(bm_layoutSubviews));
}

- (void)bm_layoutSubviews {
    if (isIOS11 && self.subviews.count) {
        for (UIView *subView in self.subviews) {
            if ([subView isKindOfClass: NSClassFromString(@"_UINavigationBarContentView")]) {
                for (UIView *subView2 in subView.subviews) {
                    if ([subView2 isKindOfClass: NSClassFromString(@"_UITAMICAdaptorView")]) {
                    }
                    if ([subView2 isKindOfClass: NSClassFromString(@"_UIButtonBarStackView")]) {
                        NSArray *constrains = subView2.constraints;
                        NSLog(@"%@", constrains);
                    }
                }
            }
        }
    }
    [self bm_layoutSubviews];
}

@end
