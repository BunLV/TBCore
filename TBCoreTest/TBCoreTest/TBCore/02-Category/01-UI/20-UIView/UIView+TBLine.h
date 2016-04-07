//
//  UIView+TBLine.h
//  Core
//
//  Created by Le Viet Bun on 4/24/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (TBLine)

#pragma mark - Add
#pragma mark + Origin
- (void)tb_addLineWithFrame:(CGRect)_frame withColor:(UIColor *)_color withAlpha:(CGFloat)_alpha withTag:(NSInteger)_tagArg;

#pragma mark + Utils
- (void)tb_addLineTopWithHeight:(CGFloat)_height withColor:(UIColor *)_color withAlpha:(CGFloat)_alpha;
- (void)tb_addLineTopWithHeight:(CGFloat)_height withColor:(UIColor *)_color withAlpha:(CGFloat)_alpha withOffSetX:(CGFloat)offSetX;

- (void)tb_addLineBottomWithHeight:(CGFloat)_height withColor:(UIColor *)_color withAlpha:(CGFloat)_alpha;
- (void)tb_addLineBottomWithHeight:(CGFloat)_height withColor:(UIColor *)_color withAlpha:(CGFloat)_alpha withOffSetX:(CGFloat)offSetX;

- (void)tb_addLineLeftWithWidth:(CGFloat)_width withColor:(UIColor *)_color withAlpha:(CGFloat)_alpha;
- (void)tb_addLineLeftWithWidth:(CGFloat)_width withColor:(UIColor *)_color withAlpha:(CGFloat)_alpha withOffSetY:(CGFloat)offSetY;

- (void)tb_addLineRightWithWidth:(CGFloat)_width withColor:(UIColor *)_color withAlpha:(CGFloat)_alpha;
- (void)tb_addLineRightWithWidth:(CGFloat)_width withColor:(UIColor *)_color withAlpha:(CGFloat)_alpha withOffSetY:(CGFloat)offSetY;

#pragma mark - Remove
- (void)tb_removeLineTop;
- (void)tb_removeLineBottom;
- (void)tb_removeLineLeft;
- (void)tb_removeLineRight;

@end
