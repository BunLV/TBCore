//
//  UIStoryboard+TBCore.m
//  TBCoreTest
//
//  Created by Bun Le Viet on 4/6/16.
//  Copyright © 2016 Bun Le Viet. All rights reserved.
//

#import "UIStoryboard+TBCore.h"

@implementation UIStoryboard (TBCore)

#pragma mark - Get
- (id)tb_getViewControllerWithClass:(Class)_class
{
    UIViewController *viewController = [self instantiateViewControllerWithIdentifier:NSStringFromClass(_class)];
    
    return viewController;
}

@end
