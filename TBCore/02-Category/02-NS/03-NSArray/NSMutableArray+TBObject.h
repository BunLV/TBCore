//
//  NSMutableArray+TBObject.h
//  Core
//
//  Created by Le Viet Bun on 4/23/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSArray+TBObject.h"

@interface NSMutableArray (TBObject)

#pragma mark - Add
// -
- (void)tb_addObject:(id)_object;

// -
- (void)tb_addInteger:(NSInteger)_object;
- (void)tb_addFloat:(float)_object;
- (void)tb_addDouble:(double)_object;
- (void)tb_addBool:(BOOL)_object;

#pragma mark - Insert
// -
- (void)tb_insertObject:(id)_object atIndex:(NSUInteger)_index;

// -
- (void)tb_insertInteger:(NSInteger)_object atIndex:(NSUInteger)_index;
- (void)tb_insertFloat:(float)_object atIndex:(NSUInteger)_index;
- (void)tb_insertDouble:(double)_object atIndex:(NSUInteger)_index;
- (void)tb_insertBool:(BOOL)_object atIndex:(NSUInteger)_index;

#pragma mark - Remove
// -
- (void)tb_removeObject:(id)_object;

// -
- (void)tb_removeInteger:(NSInteger)_object;
- (void)tb_removeFloat:(float)_object;
- (void)tb_removeDouble:(double)_object;
- (void)tb_removeBool:(BOOL)_object;

// -
- (void)tb_removeObjectAtIndex:(NSUInteger)_index;

@end
