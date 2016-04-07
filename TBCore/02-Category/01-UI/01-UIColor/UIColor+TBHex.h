//
//  UIColor+TBHex.h
//  Core
//
//  Created by Le Viet Bun on 4/24/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import <UIKit/UIKit.h>

#define TB_COLOR_CUSTOM_HEX_STRING(hexString) [UIColor tb_colorFromHexString:hexString]

@interface UIColor (TBHex)

+ (UIColor *)tb_colorFromHexString:(NSString *)_hexString;

@end
