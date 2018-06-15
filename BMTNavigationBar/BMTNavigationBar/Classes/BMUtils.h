//
//  BMUtils.h
//  BMTNavigationBar
//
//  Created by Jashion on 08/02/2018.
//  Copyright © 2018 BMu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BMUtils : NSObject

/**
 实例方法交换
 
 @param cls 交换方法的类
 @param originalSelector 原始方法
 @param swizzledSelector 交换方法
 */
extern void swizzleInstanceMethod(Class cls, SEL originalSelector, SEL swizzledSelector);

@end
