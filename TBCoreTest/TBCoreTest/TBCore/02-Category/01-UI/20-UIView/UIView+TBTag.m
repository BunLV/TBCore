//
//  UIView+TBTag.m
//  Core
//
//  Created by BunLV on 4/12/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import "UIView+TBTag.h"

@implementation UIView (TBTag)

#pragma mark - Get
- (UIView *)tb_viewWithTag:(NSInteger)tag
{
    return (UIView *)[self viewWithTag:tag];
}

- (UIScrollView *)tb_scvWithTag:(NSInteger)tag
{
    return (UIScrollView *)[self tb_viewWithTag:tag];
}

- (UITableView *)tb_tbvWithTag:(NSInteger)tag
{
    return (UITableView *)[self tb_viewWithTag:tag];
}

- (UICollectionView *)tb_cltvWithTag:(NSInteger)tag
{
    return (UICollectionView *)[self tb_viewWithTag:tag];
}

// -
- (UILabel *)tb_lbWithTag:(NSInteger)tag
{
    return (UILabel *)[self tb_viewWithTag:tag];
}

- (UIButton *)tb_btnWithTag:(NSInteger)tag
{
    return (UIButton *)[self tb_viewWithTag:tag];
}

- (UIImageView *)tb_imvWithTag:(NSInteger)tag
{
    return (UIImageView *)[self tb_viewWithTag:tag];
}

- (UITextField *)tb_tfWithTag:(NSInteger)tag
{
    return (UITextField *)[self tb_viewWithTag:tag];
}

- (UITextView *)tb_tvWithTag:(NSInteger)tag
{
    return (UITextView *)[self tb_viewWithTag:tag];
}

// - 
- (UISegmentedControl *)tb_smcWithTag:(NSInteger)tag
{
    return (UISegmentedControl *)[self tb_viewWithTag:tag];
}

- (UISlider *)tb_sldWithTag:(NSInteger)tag
{
    return (UISlider *)[self tb_viewWithTag:tag];
}

- (UISwitch *)tb_swWithTag:(NSInteger)tag
{
    return (UISwitch *)[self tb_viewWithTag:tag];
}

- (UIActivityIndicatorView *)tb_aivWithTag:(NSInteger)tag
{
    return (UIActivityIndicatorView *)[self tb_viewWithTag:tag];
}

- (UIProgressView *)tb_pgvWithTag:(NSInteger)tag
{
    return (UIProgressView *)[self tb_viewWithTag:tag];
}

- (UIStepper *)tb_stpWithTag:(NSInteger)tag
{
    return (UIStepper *)[self tb_viewWithTag:tag];
}

- (UIPickerView *)tb_pkvWithTag:(NSInteger)tag
{
    return (UIPickerView *)[self tb_viewWithTag:tag];
}

- (UIDatePicker *)tb_dpkWithTag:(NSInteger)tag
{
    return (UIDatePicker *)[self tb_viewWithTag:tag];
}

@end
