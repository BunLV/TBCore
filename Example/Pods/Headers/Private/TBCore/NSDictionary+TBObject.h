//
//  NSDictionary+TBObject.h
//  Core
//
//  Created by BunLV on 4/12/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (TBObject)

#pragma mark - Check
- (BOOL)tb_containsKey:(NSString *)_key;
- (BOOL)tb_containsObject:(id)_object;
- (BOOL)tb_containsObjectForKey:(NSString *)_key;

#pragma mark - Get
// - 
- (id)tb_objectForKey:(NSString *)_key;

// -
- (NSDictionary *)tb_dictionaryForKey:(NSString *)_key;
- (NSMutableDictionary *)tb_mutableDictionaryForKey:(NSString *)_key;

// -
- (NSArray *)tb_arrayForKey:(NSString *)_key;
- (NSMutableArray *)tb_mutableArrayForKey:(NSString *)_key;

// - 
- (NSString *)tb_stringForKey:(NSString *)_key;
- (NSInteger)tb_integerForKey:(NSString *)_key;
- (float)tb_floatForKey:(NSString *)_key;
- (double)tb_doubleForKey:(NSString *)_key;
- (BOOL)tb_boolForKey:(NSString *)_key;

@end
