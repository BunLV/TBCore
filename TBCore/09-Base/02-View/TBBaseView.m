//
//  TBBaseView.m
//  Core
//
//  Created by BunLV on 5/7/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import "TBBaseView.h"

#import "TB-Header.h"

@implementation TBBaseView

#pragma mark - Base
#pragma mark + Init
+ (instancetype)tb_createdView
{
    return [self tb_createdViewWithIndex:0];
}

+ (instancetype)tb_createdViewWithIndex:(NSInteger)index
{
    TBBaseView *view = [self mg_viewFromNibName:NSStringFromClass([self class]) index:index];
    
    if ( view )
    {
        [view tb_setupData];
        [view tb_setupView];
    }
    
    return view;
}

#pragma mark + Setup view
- (void)tb_setupData
{
    
}

- (void)tb_setupView
{
    
}

#pragma mark - Show + Hide

#pragma mark - Dealloc
- (void)dealloc
{
    [self tb_dealloc];
}

- (void)tb_dealloc
{
    TBLog(@"%@ dealloc", NSStringFromClass([self class]));
}

#pragma mark - Utils
+ (id)mg_viewFromNibName:(NSString *)_nibName index:(NSInteger)_index
{
    _nibName = [_nibName stringByReplacingOccurrencesOfString:@".xib" withString:@""];
    NSArray *arrViews =  [[NSBundle mainBundle] loadNibNamed:_nibName owner:self options:nil];
    
    if ( arrViews.count > _index )
    {
        return [arrViews objectAtIndex:_index];
    }
    else
    {
        TBLog(@"%@ : %ld not found", _nibName, (long)_index);
        
        return nil;
    }
}

@end
