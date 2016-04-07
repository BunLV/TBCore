//
//  UIView+TBFrame.m
//  Core
//
//  Created by BunLV on 4/12/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import "UIView+TBFrame.h"

#import "TB-Header.h"

@implementation UIView (TBFrame)

#pragma mark - Get
- (CGRect)tb_frame
{
    if ( TB_DETECT_IOS_8_X || TB_DETECT_DEVICE_ORIENTATION_PORTRAIT )
    {
        return self.frame;
    }
    
    return self.bounds;
}

- (CGSize)tb_size
{
    return self.tb_frame.size;
}

- (CGPoint)tb_origin
{
    return self.tb_frame.origin;
}

// -
- (CGFloat)tb_x
{
    return self.tb_origin.x;
}

- (CGFloat)tb_y
{
    return self.tb_origin.y;
}

- (CGFloat)tb_width
{
    return self.tb_size.width;
}

- (CGFloat)tb_height
{
    return self.tb_size.height;
}

#pragma mark - Set
- (void)tb_setX:(CGFloat)_x
{
    CGRect _frame = self.frame;
    _frame.origin.x = _x;
    
    self.frame = _frame;
}

- (void)tb_setY:(CGFloat)_y
{
    CGRect _frame = self.frame;
    _frame.origin.y = _y;
    
    self.frame = _frame;
}

- (void)tb_setX:(CGFloat)_x y:(CGFloat)_y
{
    CGRect _frame = self.frame;
    _frame.origin.x = _x;
    _frame.origin.y = _y;
    
    self.frame = _frame;
}

// -
- (void)tb_setWidth:(CGFloat)_width
{
    CGRect _frame = self.frame;
    _frame.size.width = _width;
    
    self.frame = _frame;
}

- (void)tb_setHeight:(CGFloat)_height
{
    CGRect _frame = self.frame;
    _frame.size.height = _height;
    
    self.frame = _frame;
}

- (void)tb_setWidth:(CGFloat)_width height:(CGFloat)_height
{
    CGRect _frame = self.frame;
    _frame.size.width = _width;
    _frame.size.height = _height;
    
    self.frame = _frame;
}

@end
