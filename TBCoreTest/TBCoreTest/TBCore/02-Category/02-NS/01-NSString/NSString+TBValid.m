//
//  NSString+TBValid.m
//  Core
//
//  Created by Le Viet Bun on 4/23/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import "NSString+TBValid.h"

@implementation NSString (TBValid)

#pragma mark - Form
// -
- (BOOL)tb_isValidWithRegex:(NSString *)_regex
{
    NSPredicate *_predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", _regex];
    
    return [_predicate evaluateWithObject:[self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]]];
}

// -
- (BOOL)tb_isValidEmail
{
    NSString *_regex = @"\\w+[@]\\w+[.]\\w{2,10}";
    
    return [self tb_isValidWithRegex:_regex];
}

- (BOOL)tb_isValidPhone
{
    NSString *_regex = @"[0-9]{9,11}";
    
    return [self tb_isValidWithRegex:_regex];
}

@end
