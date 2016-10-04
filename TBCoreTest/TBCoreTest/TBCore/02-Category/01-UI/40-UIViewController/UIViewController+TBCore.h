//
//  UIViewController+TBCore.h
//  TBCoreTest
//
//  Created by Bun Le Viet on 4/6/16.
//  Copyright © 2016 Bun Le Viet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (TBCore)

#pragma mark - Get
- (UIViewController *)tb_rootViewController;
- (UIViewController *)tb_topMostViewController;

#pragma mark - Present + dismiss
- (void)tb_presentViewController:(UIViewController *)viewControllerToPresent animated:(BOOL)flag completion:(void (^)(void))completion;

- (void)tb_dismissViewControllerAnimated:(BOOL)flag completion:(void (^)(void))completion;

@end
