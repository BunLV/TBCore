//
//  NSMutableArray+TBObject.m
//  Core
//
//  Created by Le Viet Bun on 4/23/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import "NSMutableArray+TBObject.h"

@implementation NSMutableArray (TBObject)

#pragma mark - Add
- (void)tb_addObject:(id)_object
{
    if ( !_object )
    {
        NSLog(@"You can't add object is nill to array");
        
        return;
    }
    
    [self addObject:_object];
}

- (void)tb_addInteger:(NSInteger)_object
{
    [self tb_addObject:[NSNumber numberWithInteger:_object]];
}

- (void)tb_addFloat:(float)_object
{
    [self tb_addObject:[NSNumber numberWithFloat:_object]];
}

- (void)tb_addDouble:(double)_object
{
    [self tb_addObject:[NSNumber numberWithDouble:_object]];
}

- (void)tb_addBool:(BOOL)_object
{
    [self tb_addObject:[NSNumber numberWithBool:_object]];
}

#pragma mark - Insert
- (void)tb_insertObject:(id)_object atIndex:(NSUInteger)_index
{
    if ( !_object )
    {
        NSLog(@"You can't insert object is nill to array");
        
        return;
    }
    
    [self insertObject:_object atIndex:_index];
}

- (void)tb_insertInteger:(NSInteger)_object atIndex:(NSUInteger)_index
{
    [self tb_insertObject:[NSNumber numberWithInteger:_object] atIndex:_index];
}

- (void)tb_insertFloat:(float)_object atIndex:(NSUInteger)_index
{
    [self tb_insertObject:[NSNumber numberWithFloat:_object] atIndex:_index];
}

- (void)tb_insertDouble:(double)_object atIndex:(NSUInteger)_index
{
    [self tb_insertObject:[NSNumber numberWithDouble:_object] atIndex:_index];
}

- (void)tb_insertBool:(BOOL)_object atIndex:(NSUInteger)_index
{
    [self tb_insertObject:[NSNumber numberWithBool:_object] atIndex:_index];
}

#pragma mark - Remove
// -
- (void)tb_removeObject:(id)_object
{
    if ( !_object )
    {
        NSLog(@"You can't remove object is nill for array");
        
        return;
    }
    
    [self removeObject:_object];
}

// -
- (void)tb_removeInteger:(NSInteger)_object
{
    [self tb_removeObject:[NSNumber numberWithInteger:_object]];
}

- (void)tb_removeFloat:(float)_object
{
    [self tb_removeObject:[NSNumber numberWithFloat:_object]];
}

- (void)tb_removeDouble:(double)_object
{
    [self tb_removeObject:[NSNumber numberWithDouble:_object]];
}

- (void)tb_removeBool:(BOOL)_object
{
    [self tb_removeObject:[NSNumber numberWithBool:_object]];
}

// -
- (void)tb_removeObjectAtIndex:(NSUInteger)_index
{
    if ( self.count < _index )
    {
        NSLog(@"You can't remove object at index : %ld because index is out of range of array", (long)_index);
        
        return;
    }
    
    [self removeObjectAtIndex:_index];
}

@end
