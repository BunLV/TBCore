//
//  UIStoryboard+TBCore.h
//  TBCoreTest
//
//  Created by Bun Le Viet on 4/6/16.
//  Copyright © 2016 Bun Le Viet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIStoryboard (TBCore)

#pragma mark - Get
- (id)tb_getViewControllerWithClass:(Class)_class;

@end
