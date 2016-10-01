//
//  TBBaseView.h
//  Core
//
//  Created by BunLV on 5/7/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TBBaseView : UIView

#pragma mark - Base
#pragma mark + Init
+ (instancetype)tb_createdView;
+ (instancetype)tb_createdViewWithIndex:(NSInteger)index;

#pragma mark + Setup
- (void)tb_setupData;
- (void)tb_setupView;

#pragma mark - Show + Hide

#pragma mark - Dealloc
- (void)tb_dealloc;

@end
