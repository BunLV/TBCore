//
//  UIViewController+TBCore.m
//  TBCoreTest
//
//  Created by Bun Le Viet on 4/6/16.
//  Copyright © 2016 Bun Le Viet. All rights reserved.
//

#import <MBProgressHUD/MBProgressHUD.h>

#import "UIViewController+TBCore.h"

#import "TB-Header-Define.h"

@implementation UIViewController (TBCore)

#pragma mark - Get
- (UIViewController *)tb_rootViewController
{
    UIWindow *window = [[[UIApplication sharedApplication] windows] objectAtIndex:0];
    UIViewController *rootVC = window.rootViewController;
    
    return rootVC;
}

- (UIViewController *)tb_topMostViewController
{
    UIWindow *window = [[[UIApplication sharedApplication] windows] objectAtIndex:0];
    UIViewController *topMostVC = window.rootViewController;
    
    while (topMostVC.presentedViewController)
    {
        topMostVC = topMostVC.presentedViewController;
    }
    
    return topMostVC;
}

#pragma mark - Present + dismiss
- (void)tb_presentViewController:(UIViewController *)viewControllerToPresent animated:(BOOL)flag completion:(void (^)(void))completion
{
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    
    __weak typeof(self) blockSelf = self;
    [self presentViewController:viewControllerToPresent animated:flag completion:^{
        
        if ( completion )
        {
            completion ();
        }
        
        [MBProgressHUD hideAllHUDsForView:blockSelf.view animated:YES];
    }];
}

- (void)tb_dismissViewControllerAnimated:(BOOL)flag completion:(void (^)(void))completion
{
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    
    __weak typeof(self) blockSelf = self;
    [self dismissViewControllerAnimated:flag completion:^{
        
        if ( completion )
        {
            completion ();
        }
        
        [MBProgressHUD hideAllHUDsForView:blockSelf.view animated:YES];
    }];
}

@end
