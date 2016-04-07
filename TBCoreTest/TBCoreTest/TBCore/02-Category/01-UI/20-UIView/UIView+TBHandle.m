//
//  UIView+TBHandle.m
//  Core
//
//  Created by Le Viet Bun on 4/17/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import "UIView+TBHandle.h"
#import <objc/runtime.h>

@implementation UIView (TBHandle)

#pragma mark - Target
- (void)tb_addHandleSingleTapWithTarget:(id)_target withAction:(SEL)_action
{
    [self tb_addHandleTapWithTarget:_target withAction:_action withNumberOfTap:1];
}

- (void)tb_addHandleDoubleTapWithTarget:(id)_target withAction:(SEL)_action
{
    [self tb_addHandleTapWithTarget:_target withAction:_action withNumberOfTap:2];
}

- (void)tb_addHandleTapWithTarget:(id)_target withAction:(SEL)_action withNumberOfTap:(NSInteger)_numberOfTap
{
    [self setUserInteractionEnabled:YES];
    
    UITapGestureRecognizer *handleTap = [[UITapGestureRecognizer alloc] initWithTarget:_target action:_action];
    handleTap.numberOfTapsRequired = _numberOfTap;
    handleTap.numberOfTouchesRequired = _numberOfTap;
    
    [self addGestureRecognizer:handleTap];
}

#pragma mark - Block
#pragma mark + SG
static const void *UITapGestureRecognizerBlock_Void = &UITapGestureRecognizerBlock_Void;
- (UITapGestureRecognizerBlock)handleBlock
{
    return objc_getAssociatedObject(self, UITapGestureRecognizerBlock_Void);
}

- (void)setHandleBlock:(UITapGestureRecognizerBlock)handleBlock
{
    objc_setAssociatedObject(self, UITapGestureRecognizerBlock_Void, handleBlock, OBJC_ASSOCIATION_COPY);
}

#pragma mark + Private
- (void)tb_handleSingleTap:(UITapGestureRecognizer *)_handleTap
{
    id sender = _handleTap.view;
    
    if ( self.handleBlock )
    {
        self.handleBlock(_handleTap, sender);
    }
}

- (void)tb_handleDoubleTap:(UITapGestureRecognizer *)_handleTap
{
    id sender = _handleTap.view;
    
    if ( self.handleBlock )
    {
        self.handleBlock(_handleTap, sender);
    }
}

- (void)tb_handleOtherTap:(UITapGestureRecognizer *)_handleTap
{
    id sender = _handleTap.view;
    
    if ( self.handleBlock )
    {
        self.handleBlock(_handleTap, sender);
    }
}

#pragma mark + Main
- (void)tb_addHandleSingleTap:(UITapGestureRecognizerBlock)_block
{
    self.handleBlock = _block;
    
    [self tb_addHandleTapWithTarget:self withAction:@selector(tb_handleSingleTap:) withNumberOfTap:1];
}

- (void)tb_addHandleDoubleTap:(UITapGestureRecognizerBlock)_block
{
    self.handleBlock = _block;
    
    [self tb_addHandleTapWithTarget:self withAction:@selector(tb_handleDoubleTap:) withNumberOfTap:2];
}

- (void)tb_addHandleTapWithNumberOfTap:(NSInteger)_numberOfTap handleTap:(UITapGestureRecognizerBlock)_block
{
    self.handleBlock = _block;
    
    [self tb_addHandleTapWithTarget:self withAction:@selector(tb_handleOtherTap:) withNumberOfTap:_numberOfTap];
}

@end
