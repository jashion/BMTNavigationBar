//
//  BMUtils.m
//  BMTNavigationBar
//
//  Created by Jashion on 08/02/2018.
//  Copyright © 2018 BMu. All rights reserved.
//

#import "BMUtils.h"
#import <objc/runtime.h>

@implementation BMUtils

void swizzleInstanceMethod(Class cls, SEL originalSelector, SEL swizzledSelector){
    Method originalMethod = class_getInstanceMethod(cls, originalSelector);
    Method swizzledMethod = class_getInstanceMethod(cls, swizzledSelector);
    
    BOOL didAddMethod = class_addMethod(cls, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
    if (didAddMethod) {
        class_replaceMethod(cls, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
    } else {
        method_exchangeImplementations(originalMethod, swizzledMethod);
    }
}

@end
