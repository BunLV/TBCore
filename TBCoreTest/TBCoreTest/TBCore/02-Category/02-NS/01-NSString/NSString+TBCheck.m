//
//  NSDate+TBCheck.m
//  Core
//
//  Created by Le Viet Bun on 4/23/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import "NSString+TBCheck.h"

@implementation NSString (TBCheck)

#pragma mark - Check
// -
- (BOOL)tb_isEmpty
{
    NSString *_string = [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    
    return [_string tb_isEqualToString:@""];
}

// -
- (BOOL)tb_isContainsString:(NSString *)_string
{
    NSRange range = [self rangeOfString:_string];
    
    return range.location != NSNotFound;
}

- (BOOL)tb_isContainsStringCaseInsensitive:(NSString *)_string
{
    NSRange range = [self rangeOfString:_string options:NSCaseInsensitiveSearch];
    
    return range.location != NSNotFound;
}

// -
- (BOOL)tb_isPrefix:(NSString *)_string
{
    return [self hasPrefix:_string];
}

- (BOOL)tb_isPrefixCaseInsensitive:(NSString *)_string
{
    return [[self lowercaseString] tb_isPrefix:[_string lowercaseString]];
}

// -
- (BOOL)tb_isSuffix:(NSString *)_string
{
    return [self hasSuffix:_string];
}

- (BOOL)tb_isSuffixCaseInsensitive:(NSString *)_string
{
    return [[self lowercaseString] tb_isSuffix:[_string lowercaseString]];
}

// -
- (BOOL)tb_isEqualToString:(NSString *)_string
{
    return [self isEqualToString:_string];
}

- (BOOL)tb_isEqualToStringCaseInsensitive:(NSString *)_string
{
    return [[self lowercaseString] tb_isEqualToString:[_string lowercaseString]];
}

@end
