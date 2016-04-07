//
//  UIView+TBBorder.h
//  Core
//
//  Created by BunLV on 6/25/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (TBBorder)

#pragma mark - Origin
- (void)tb_borderWithWidth:(CGFloat)_borderWidth withColor:(UIColor *)_borderColor withCornerRadius:(CGFloat)_cornerRadius withMasksToBounds:(BOOL)_masksToBounds;

#pragma mark - Other
- (void)tb_borderCaseAvatarWithWidth:(CGFloat)_borderWidth withColor:(UIColor *)_borderColor;

@end
