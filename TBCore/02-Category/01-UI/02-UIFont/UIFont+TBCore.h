//
//  UIFont+TBCore.h
//  Core
//
//  Created by Le Viet Bun on 4/24/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import <UIKit/UIKit.h>

#define TB_FONT_NAME @"HelveticaNeue"

#define TB_FONT_WITH_SIZE(size) [UIFont tb_fontWithSize:size]
#define TB_FONT_BOLD_WITH_SIZE(size) [UIFont tb_fontBoldWithSize:size]
#define TB_FONT_ITALIC_WITH_SIZE(size) [UIFont tb_fontItalicWithSize:size]
#define TB_FONT_LIGHT_WITH_SIZE(size) [UIFont tb_fontLightWithSize:size]
#define TB_FONT_REGULAR_WITH_SIZE(size) [UIFont tb_fontRegularWithSize:size]

@interface UIFont (TBCore)

#pragma mark - Test
+ (void)tb_displayFontNames;
+ (void)tb_displayFontNamesWithFontFamily:(NSString *)_fontFamily;

#pragma mark - Get
+ (UIFont *)tb_fontWithName:(NSString *)_fontName withSize:(CGFloat)_size;

+ (UIFont *)tb_fontWithSize:(CGFloat)size;
+ (UIFont *)tb_fontBoldWithSize:(CGFloat)size;
+ (UIFont *)tb_fontItalicWithSize:(CGFloat)size;
+ (UIFont *)tb_fontLightWithSize:(CGFloat)size;
+ (UIFont *)tb_fontRegularWithSize:(CGFloat)size;

@end
