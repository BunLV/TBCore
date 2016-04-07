//
//  UIView+TBBorder.m
//  Core
//
//  Created by BunLV on 6/25/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import "UIView+TBBorder.h"

@implementation UIView (TBBorder)

#pragma mark - Origin
- (void)tb_borderWithWidth:(CGFloat)_borderWidth withColor:(UIColor *)_borderColor withCornerRadius:(CGFloat)_cornerRadius withMasksToBounds:(BOOL)_masksToBounds
{
    self.layer.borderWidth = _borderWidth;
    self.layer.borderColor = _borderColor.CGColor;
    self.layer.cornerRadius = _cornerRadius;
    self.layer.masksToBounds = _masksToBounds;
}

#pragma mark - Other
- (void)tb_borderCaseAvatarWithWidth:(CGFloat)_borderWidth withColor:(UIColor *)_borderColor
{
    CGFloat _cornerRadius = self.frame.size.width / 2.0f;
    
    [self tb_borderWithWidth:_borderWidth withColor:_borderColor withCornerRadius:_cornerRadius withMasksToBounds:YES];
}

@end
