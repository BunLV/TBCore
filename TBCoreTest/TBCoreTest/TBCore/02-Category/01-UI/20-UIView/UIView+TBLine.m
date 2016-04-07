//
//  UIView+TBLine.m
//  Core
//
//  Created by Le Viet Bun on 4/24/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import "UIView+TBLine.h"

#define TB_LINE_TOP_TAG 64351
#define TB_LINE_BOTTOM_TAG 64371
#define TB_LINE_LEFT_TAG 64361
#define TB_LINE_RIGHT_TAG 64381

@implementation UIView (TBLine)

#pragma mark - Add
#pragma mark + Origin
- (void)tb_addLineWithFrame:(CGRect)_frame withColor:(UIColor *)_color withAlpha:(CGFloat)_alpha withTag:(NSInteger)_tagArg
{
    UIImageView *imvLine = [[UIImageView alloc] initWithFrame:_frame];
    imvLine.backgroundColor = _color;
    imvLine.alpha = _alpha;
    imvLine.tag = _tagArg;
    
    [self addSubview:imvLine];
}

#pragma mark + Utils
- (void)tb_addLineTopWithHeight:(CGFloat)_height withColor:(UIColor *)_color withAlpha:(CGFloat)_alpha
{
    [self tb_addLineTopWithHeight:_height withColor:_color withAlpha:_alpha withOffSetX:0.0f];
}

- (void)tb_addLineTopWithHeight:(CGFloat)_height withColor:(UIColor *)_color withAlpha:(CGFloat)_alpha withOffSetX:(CGFloat)offSetX
{
    CGRect _frame = self.frame;
    _frame.origin.x = offSetX;
    _frame.origin.y = 0.0f;
    _frame.size.width = (_frame.size.width - (offSetX * 2.0f));
    _frame.size.height = _height;
    
    [self tb_addLineWithFrame:_frame withColor:_color withAlpha:_alpha withTag:TB_LINE_TOP_TAG];
}

- (void)tb_addLineBottomWithHeight:(CGFloat)_height withColor:(UIColor *)_color withAlpha:(CGFloat)_alpha
{
    [self tb_addLineBottomWithHeight:_height withColor:_color withAlpha:_alpha withOffSetX:0.0f];
}

- (void)tb_addLineBottomWithHeight:(CGFloat)_height withColor:(UIColor *)_color withAlpha:(CGFloat)_alpha withOffSetX:(CGFloat)offSetX
{
    CGRect _frame = self.frame;
    _frame.origin.x = offSetX;
    _frame.origin.y = _frame.size.height - _height;
    _frame.size.width = (_frame.size.width - (offSetX * 2.0f));
    _frame.size.height = _height;
    
    [self tb_addLineWithFrame:_frame withColor:_color withAlpha:_alpha withTag:TB_LINE_BOTTOM_TAG];
}

- (void)tb_addLineLeftWithWidth:(CGFloat)_width withColor:(UIColor *)_color withAlpha:(CGFloat)_alpha
{
    [self tb_addLineLeftWithWidth:_width withColor:_color withAlpha:_alpha withOffSetY:0.0f];
}

- (void)tb_addLineLeftWithWidth:(CGFloat)_width withColor:(UIColor *)_color withAlpha:(CGFloat)_alpha withOffSetY:(CGFloat)offSetY
{
    CGRect _frame = self.frame;
    _frame.origin.x = 0.0f;
    _frame.origin.y = offSetY;
    _frame.size.width = _width;
    _frame.size.height = (_frame.size.height - (offSetY * 2.0f));
    
    [self tb_addLineWithFrame:_frame withColor:_color withAlpha:_alpha withTag:TB_LINE_LEFT_TAG];
}

- (void)tb_addLineRightWithWidth:(CGFloat)_width withColor:(UIColor *)_color withAlpha:(CGFloat)_alpha
{
    [self tb_addLineRightWithWidth:_width withColor:_color withAlpha:_alpha withOffSetY:0.0f];
}

- (void)tb_addLineRightWithWidth:(CGFloat)_width withColor:(UIColor *)_color withAlpha:(CGFloat)_alpha withOffSetY:(CGFloat)offSetY
{
    CGRect _frame = self.frame;
    _frame.origin.x = _frame.size.width - _width;
    _frame.origin.y = offSetY;
    _frame.size.width = _width;
    _frame.size.height = (_frame.size.height - (offSetY * 2.0f));
    
    [self tb_addLineWithFrame:_frame withColor:_color withAlpha:_alpha withTag:TB_LINE_RIGHT_TAG];
}

#pragma mark - Remove
#pragma mark + Origin
- (void)tb_removeLineWithTag:(NSInteger)_tagArg
{
    UIView *_view = [self viewWithTag:_tagArg];
    
    if ( !_view )
    {
        NSLog(@"Remove line not success");
    }
    
    [_view removeFromSuperview];
}

#pragma mark + Utils
- (void)tb_removeLineTop
{
    [self tb_removeLineWithTag:TB_LINE_TOP_TAG];
}

- (void)tb_removeLineBottom
{
    [self tb_removeLineWithTag:TB_LINE_BOTTOM_TAG];
}

- (void)tb_removeLineLeft
{
    [self tb_removeLineWithTag:TB_LINE_LEFT_TAG];
}

- (void)tb_removeLineRight
{
    [self tb_removeLineWithTag:TB_LINE_RIGHT_TAG];
}

@end
