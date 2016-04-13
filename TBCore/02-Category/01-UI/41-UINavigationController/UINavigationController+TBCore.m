//
//  UINavigationController+TBCore.m
//  TBCoreTest
//
//  Created by Bun Le Viet on 4/6/16.
//  Copyright © 2016 Bun Le Viet. All rights reserved.
//

#import "UINavigationController+TBCore.h"

#import "TBCore.h"

@implementation UINavigationController (TBCore)

#pragma mark - Push
- (void)tb_pushViewController:(UIViewController *)_viewController animated:(BOOL)_animated
{
    if ( !_viewController )
    {
        return;
    }
    
    [self pushViewController:_viewController animated:_animated];
}

- (void)tb_pushViewControllerWithClass:(Class)_class animated:(BOOL)_animated
{
    UIViewController *viewController = [self.storyboard tb_getViewControllerWithClass:_class];
    
    [self tb_pushViewController:viewController animated:_animated];
}

#pragma mark - Pop
- (void)tb_popViewControllerAnimated:(BOOL)_animated
{
    [self popViewControllerAnimated:_animated];
}

- (void)tb_popToViewControllerWithClass:(Class)_class animated:(BOOL)_animated
{
    NSArray *arrViewControllers = self.viewControllers;
    
    for ( UIViewController *_viewController in arrViewControllers )
    {
        if ( [_viewController isKindOfClass:_class] )
        {
            [self popToViewController:_viewController animated:_animated];
            
            break;
        }
    }
}

- (void)tb_popToViewControllerWithIndex:(NSUInteger)_index animated:(BOOL)_animated
{
    NSArray *arrViewController = self.viewControllers;
    
    UIViewController *_viewController = [arrViewController tb_objectAtIndex:_index];
    
    if ( _viewController )
    {
        [self popToViewController:_viewController animated:_animated];
    }
}

@end
