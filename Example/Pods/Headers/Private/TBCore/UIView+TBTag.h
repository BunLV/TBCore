//
//  UIView+TBTag.h
//  Core
//
//  Created by BunLV on 4/12/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (TBTag)

#pragma mark - Get
- (UIView *)tb_viewWithTag:(NSInteger)tag;
- (UIScrollView *)tb_scvWithTag:(NSInteger)tag;
- (UITableView *)tb_tbvWithTag:(NSInteger)tag;
- (UICollectionView *)tb_cltvWithTag:(NSInteger)tag;

// -
- (UILabel *)tb_lbWithTag:(NSInteger)tag;
- (UIButton *)tb_btnWithTag:(NSInteger)tag;
- (UIImageView *)tb_imvWithTag:(NSInteger)tag;
- (UITextField *)tb_tfWithTag:(NSInteger)tag;
- (UITextView *)tb_tvWithTag:(NSInteger)tag;

// - 
- (UISegmentedControl *)tb_smcWithTag:(NSInteger)tag;
- (UISlider *)tb_sldWithTag:(NSInteger)tag;
- (UISwitch *)tb_swWithTag:(NSInteger)tag;
- (UIActivityIndicatorView *)tb_aivWithTag:(NSInteger)tag;
- (UIProgressView *)tb_pgvWithTag:(NSInteger)tag;
- (UIStepper *)tb_stpWithTag:(NSInteger)tag;
- (UIPickerView *)tb_pkvWithTag:(NSInteger)tag;
- (UIDatePicker *)tb_dpkWithTag:(NSInteger)tag;

@end
