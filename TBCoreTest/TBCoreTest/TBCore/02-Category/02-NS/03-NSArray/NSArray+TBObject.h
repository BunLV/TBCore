//
//  NSArray+TBObject.h
//  Core
//
//  Created by BunLV on 4/12/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (TBObject)

#pragma mark - Check
- (BOOL)tb_containsObject:(id)_object;

#pragma mark - Get
// - 
- (id)tb_objectAtIndex:(NSUInteger)_index;

// -
- (NSDictionary *)tb_dictionaryAtIndex:(NSUInteger)_index;
- (NSMutableDictionary *)tb_mutableDictionaryAtIndex:(NSUInteger)_index;

// -
- (NSArray *)tb_arrayAtIndex:(NSUInteger)_index;
- (NSMutableArray *)tb_mutableArrayAtIndex:(NSUInteger)_index;

// -
- (NSString *)tb_stringAtIndex:(NSUInteger)_index;
- (NSInteger)tb_integerAtIndex:(NSUInteger)_index;
- (float)tb_floatAtIndex:(NSUInteger)_index;
- (double)tb_doubleAtIndex:(NSUInteger)_index;
- (BOOL)tb_boolAtIndex:(NSUInteger)_index;

@end
