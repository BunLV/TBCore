//
//  NSString+TBChange.h
//  Core
//
//  Created by Le Viet Bun on 4/23/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (TBChange)

#pragma mark - Trimming
- (NSString *)tb_stringByTrimmingCharactersCaseWhitespace;
- (NSString *)tb_stringByTrimmingCharactersCaseWhitespaceAndNewline;
- (NSString *)tb_stringByTrimmingCharactersCaseLetter;
- (NSString *)tb_stringByTrimmingCharactersCaseDecimalDigit;
- (NSString *)tb_stringByTrimmingCharactersCaseLowercaseLetter;
- (NSString *)tb_stringByTrimmingCharactersCaseUppercaseLetter;

#pragma mark - HTML
// -
- (NSString *)tb_stringByReplacingAmpEscapes;
- (NSString *)tb_stringByReplacingEscapesAmp;

@end
