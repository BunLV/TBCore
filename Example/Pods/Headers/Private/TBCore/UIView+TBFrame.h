//
//  UIView+TBFrame.h
//  Core
//
//  Created by BunLV on 4/12/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (TBFrame)

#pragma mark - Get
- (CGRect)tb_frame;

- (CGSize)tb_size;
- (CGPoint)tb_origin;

// -
- (CGFloat)tb_x;
- (CGFloat)tb_y;
- (CGFloat)tb_width;
- (CGFloat)tb_height;

#pragma mark - Set
- (void)tb_setX:(CGFloat)_x;
- (void)tb_setY:(CGFloat)_y;
- (void)tb_setX:(CGFloat)_x y:(CGFloat)_y;

// -
- (void)tb_setWidth:(CGFloat)_width;
- (void)tb_setHeight:(CGFloat)_height;
- (void)tb_setWidth:(CGFloat)_width height:(CGFloat)_height;

@end
