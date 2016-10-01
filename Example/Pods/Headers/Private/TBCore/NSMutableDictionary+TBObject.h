//
//  NSMutableDictionary+TBObject.h
//  Core
//
//  Created by Le Viet Bun on 4/23/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDictionary+TBObject.h"

@interface NSMutableDictionary (TBObject)

#pragma mark - Set
// -
- (void)tb_setDictionary:(NSDictionary *)_value forKey:(NSString *)_key;

// -
- (void)tb_setArray:(NSArray *)_value forKey:(NSString *)_key;

// -
- (void)tb_setString:(NSString *)_value forKey:(NSString *)_key;
- (void)tb_setInteger:(NSInteger)_value forKey:(NSString *)_key;
- (void)tb_setFloat:(float)_value forKey:(NSString *)_key;
- (void)tb_setDouble:(double)_value forKey:(NSString *)_key;
- (void)tb_setBool:(BOOL)_value forKey:(NSString *)_key;

@end
