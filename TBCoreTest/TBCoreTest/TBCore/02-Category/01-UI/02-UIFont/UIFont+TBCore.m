//
//  UIFont+TBCore.m
//  Core
//
//  Created by Le Viet Bun on 4/24/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import "UIFont+TBCore.h"
#import "TB-Header-Define.h"

@implementation UIFont (TBCore)

#pragma mark - Test
+ (void)tb_displayFontNames
{
    NSArray *fontFamilies = [UIFont familyNames];
    
    for (int i = 0; i < [fontFamilies count]; i++)
    {
        NSString *fontFamily = [fontFamilies objectAtIndex:i];
        NSArray *fontNames = [UIFont fontNamesForFamilyName:[fontFamilies objectAtIndex:i]];
        
        TBLog(@"%@: %@", fontFamily, fontNames);
    }
}

+ (void)tb_displayFontNamesWithFontFamily:(NSString *)_fontFamily
{
    NSArray *fontFamilies = [UIFont familyNames];
    
    for (int i = 0; i < [fontFamilies count]; i++)
    {
        NSString *fontFamily = [fontFamilies objectAtIndex:i];
        
        if ( [[fontFamily stringByReplacingOccurrencesOfString:@" " withString:@""] isEqualToString:_fontFamily] )
        {
            NSArray *fontNames = [UIFont fontNamesForFamilyName:[fontFamilies objectAtIndex:i]];
            
            TBLog(@"%@: %@", fontFamily, fontNames);
        }
    }
}

#pragma mark - Get
+ (UIFont *)tb_fontWithName:(NSString *)_fontName withSize:(CGFloat)_size
{
    return [UIFont fontWithName:_fontName size:_size];
}

+ (UIFont *)tb_fontWithSize:(CGFloat)size
{
    NSString *_fontName = TB_FONT_NAME;
    
    return [UIFont tb_fontWithName:_fontName withSize:size];
}

+ (UIFont *)tb_fontBoldWithSize:(CGFloat)size
{
    NSString *_fontName = [NSString stringWithFormat:@"%@-%@", TB_FONT_NAME, @"Bold"];
    
    return [UIFont tb_fontWithName:_fontName withSize:size];
}

+ (UIFont *)tb_fontItalicWithSize:(CGFloat)size
{
    NSString *_fontName = [NSString stringWithFormat:@"%@-%@", TB_FONT_NAME, @"Italic"];
    
    return [UIFont tb_fontWithName:_fontName withSize:size];
}

+ (UIFont *)tb_fontLightWithSize:(CGFloat)size
{
    NSString *_fontName = [NSString stringWithFormat:@"%@-%@", TB_FONT_NAME, @"Light"];
    
    return [UIFont tb_fontWithName:_fontName withSize:size];
}

+ (UIFont *)tb_fontRegularWithSize:(CGFloat)size
{
    NSString *_fontName = [NSString stringWithFormat:@"%@-%@", TB_FONT_NAME, @"Regular"];
    
    return [UIFont tb_fontWithName:_fontName withSize:size];
}

@end
