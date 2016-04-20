//
//  NSString+TBConvert.h
//  Core
//
//  Created by Le Viet Bun on 4/23/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (TBConvert)

#pragma mark - Number to String
+ (NSString *)tb_stringFromInteger:(NSInteger)_valueConvert;
+ (NSString *)tb_stringFromFloat:(float)_valueConvert;
+ (NSString *)tb_stringFromDouble:(double)_valueConvert;
+ (NSString *)tb_stringFromBool:(BOOL)_valueConvert;

@end
