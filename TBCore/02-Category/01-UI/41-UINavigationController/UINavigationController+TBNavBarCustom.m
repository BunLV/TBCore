//
//  UINavigationController+TBNavBarCustom.m
//  TBCoreTest
//
//  Created by Bun Le Viet on 4/13/16.
//  Copyright © 2016 Bun Le Viet. All rights reserved.
//

#import "UINavigationController+TBNavBarCustom.h"

@implementation UINavigationController (TBNavBarCustom)

#define TB_NAV_BAR_TAG 239848
- (void)tb_addNavbarCustom:(UIView *)view
{
    // Hidden button bar system
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:[[UIView alloc] init]];
    
    // View background
    UIView *viewNavBar = view;
    
    // Set background color
    self.navigationBar.barTintColor = viewNavBar.backgroundColor;
    viewNavBar.backgroundColor = [UIColor clearColor];
    
    CGRect frame = self.navigationBar.frame;
    frame.origin.x = 0.f;
    frame.origin.y = 0.f;
    viewNavBar.frame = frame;
    viewNavBar.tag = TB_NAV_BAR_TAG;
    
    // Get navBar current
    UINavigationBar *navBar = self.navigationBar;
    
    // Remove navigation bar custom view before because allway add navgation bar
    for ( UIView *view in navBar.subviews )
    {
        if ( view.tag == TB_NAV_BAR_TAG )
        {
            [view removeFromSuperview];
        }
    }
    
    // Add custom navigation bar to system navigation bar
    [navBar addSubview:viewNavBar];
    [navBar bringSubviewToFront:viewNavBar];
}

@end
