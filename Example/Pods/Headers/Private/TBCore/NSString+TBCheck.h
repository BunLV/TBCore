//
//  NSDate+TBCheck.h
//  Core
//
//  Created by Le Viet Bun on 4/23/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (TBCheck)

#pragma mark - Check
// -
- (BOOL)tb_isEmpty;

// -
- (BOOL)tb_isContainsString:(NSString *)_string;
- (BOOL)tb_isContainsStringCaseInsensitive:(NSString *)_string;

// -
- (BOOL)tb_isPrefix:(NSString *)_string;
- (BOOL)tb_isPrefixCaseInsensitive:(NSString *)_string;

// -
- (BOOL)tb_isSuffix:(NSString *)_string;
- (BOOL)tb_isSuffixCaseInsensitive:(NSString *)_string;

// -
- (BOOL)tb_isEqualToString:(NSString *)_string;
- (BOOL)tb_isEqualToStringCaseInsensitive:(NSString *)_string;

@end
