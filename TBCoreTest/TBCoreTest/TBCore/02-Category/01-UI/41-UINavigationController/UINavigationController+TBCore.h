//
//  UINavigationController+TBCore.h
//  TBCoreTest
//
//  Created by Bun Le Viet on 4/6/16.
//  Copyright © 2016 Bun Le Viet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (TBCore)

#pragma mark - Push
- (void)tb_pushViewController:(UIViewController *)_viewController animated:(BOOL)_animated;
- (void)tb_pushViewControllerWithClass:(Class)_class animated:(BOOL)_animated;

#pragma mark - Pop
- (void)tb_popViewControllerAnimated:(BOOL)_animated;
- (void)tb_popToViewControllerWithClass:(Class)_class animated:(BOOL)_animated;
- (void)tb_popToViewControllerWithIndex:(NSUInteger)_index animated:(BOOL)_animated;

@end
