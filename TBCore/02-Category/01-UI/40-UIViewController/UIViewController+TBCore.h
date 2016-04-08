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

@end
