//
//  UIColor+TBHex.m
//  Core
//
//  Created by Le Viet Bun on 4/24/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import "UIColor+TBHex.h"

#import "TBCore.h"

@implementation UIColor (TBHex)

+ (UIColor *)tb_colorFromHexString:(NSString *)_hexString
{
    if ( !_hexString || [_hexString tb_isEmpty] )
    {
        return [UIColor clearColor];
    }
    
    unsigned rgbValue = 0;
    
    NSScanner *scanner = [NSScanner scannerWithString:_hexString];
    [scanner setScanLocation:1]; // bypass '#' character
    [scanner scanHexInt:&rgbValue];
    
    return [UIColor colorWithRed:(((rgbValue & 0xFF0000) >> 16) / 255.0) green:(((rgbValue & 0xFF00) >> 8) / 255.0) blue:((rgbValue & 0xFF) / 255.0) alpha:1.0];
}

@end
