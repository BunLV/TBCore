//
//  NSString+TBConvert.m
//  Core
//
//  Created by Le Viet Bun on 4/23/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import "NSString+TBConvert.h"

@implementation NSString (TBConvert)

#pragma mark - Number to String
- (NSString *)tb_stringFromInteger:(NSInteger)_valueConvert
{
    NSNumber *number = [NSNumber numberWithInteger:_valueConvert];
    
    return number.stringValue;
}

- (NSString *)tb_stringFromFloat:(float)_valueConvert
{
    NSNumber *number = [NSNumber numberWithFloat:_valueConvert];
    
    return number.stringValue;
}

- (NSString *)tb_stringFromDouble:(double)_valueConvert
{
    NSNumber *number = [NSNumber numberWithDouble:_valueConvert];
    
    return number.stringValue;
}

- (NSString *)tb_stringFromBool:(BOOL)_valueConvert
{
    NSNumber *number = [NSNumber numberWithBool:_valueConvert];
    
    return number.stringValue;
}

@end
