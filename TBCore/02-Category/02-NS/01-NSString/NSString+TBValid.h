//
//  NSString+TBValid.h
//  Core
//
//  Created by Le Viet Bun on 4/23/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (TBValid)

#pragma mark - Form
// -
- (BOOL)tb_isValidWithRegex:(NSString *)_regex;

// -
- (BOOL)tb_isValidEmail;
- (BOOL)tb_isValidPhone;

@end
