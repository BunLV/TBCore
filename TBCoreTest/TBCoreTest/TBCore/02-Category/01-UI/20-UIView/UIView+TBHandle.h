//
//  UIView+TBHandle.h
//  Core
//
//  Created by Le Viet Bun on 4/17/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^UITapGestureRecognizerBlock)(UITapGestureRecognizer *handleTap, id sender);

@interface UIView (TBHandle)

#pragma mark - Target
- (void)tb_addHandleSingleTapWithTarget:(id)_target withAction:(SEL)_action;
- (void)tb_addHandleDoubleTapWithTarget:(id)_target withAction:(SEL)_action;
- (void)tb_addHandleTapWithTarget:(id)_target withAction:(SEL)_action withNumberOfTap:(NSInteger)_numberOfTap;

#pragma mark - Block
@property (copy, nonatomic) UITapGestureRecognizerBlock handleBlock;

- (void)tb_addHandleSingleTap:(UITapGestureRecognizerBlock)_block;
- (void)tb_addHandleDoubleTap:(UITapGestureRecognizerBlock)_block;
- (void)tb_addHandleTapWithNumberOfTap:(NSInteger)_numberOfTap handleTap:(UITapGestureRecognizerBlock)_block;

@end
