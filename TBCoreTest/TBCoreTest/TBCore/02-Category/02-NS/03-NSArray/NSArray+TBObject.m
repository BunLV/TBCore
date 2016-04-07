//
//  NSArray+TBObject.m
//  Core
//
//  Created by BunLV on 4/12/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import "NSArray+TBObject.h"

@implementation NSArray (TBObject)

#pragma mark - Check
- (BOOL)tb_containsObject:(id)_object
{
    if ( !_object )
    {
        return NO;
    }
    
    return [self containsObject:_object];
}

#pragma mark - Get
// -
- (id)tb_objectAtIndex:(NSUInteger)_index
{
    if ( _index >= self.count )
    {
        NSLog(@"Not found object in array for index is %ld", (long)_index);
        return nil;
    }
    
    return [self objectAtIndex:_index];
}

// -
- (NSDictionary *)tb_dictionaryAtIndex:(NSUInteger)_index
{
    id _object = [self tb_objectAtIndex:_index];
    
    if ( _object && [_object isKindOfClass:[NSDictionary class]] )
    {
        return _object;
    }
    
    return [NSDictionary new];
}

- (NSMutableDictionary *)tb_mutableDictionaryAtIndex:(NSUInteger)_index
{
    id _object = [self tb_objectAtIndex:_index];
    
    if ( _object && [_object isKindOfClass:[NSDictionary class]] )
    {
        return [NSMutableDictionary dictionaryWithDictionary:_object];
    }
    
    return [NSMutableDictionary new];
}

// -
- (NSArray *)tb_arrayAtIndex:(NSUInteger)_index
{
    id _object = [self tb_objectAtIndex:_index];
    
    if ( _object && [_object isKindOfClass:[NSArray class]] )
    {
        return _object;
    }
    
    return [NSArray new];
}

- (NSMutableArray *)tb_mutableArrayAtIndex:(NSUInteger)_index
{
    id _object = [self tb_objectAtIndex:_index];
    
    if ( _object && [_object isKindOfClass:[NSArray class]] )
    {
        return [NSMutableArray arrayWithArray:_object];
    }
    
    return [NSMutableArray new];
}

// - 
- (NSString *)tb_stringAtIndex:(NSUInteger)_index
{
    id _object = [self tb_objectAtIndex:_index];
    
    if ( _object && [_object isKindOfClass:[NSString class]] )
    {
        return _object;
    }
    else if ( _object )
    {
        return [NSString stringWithFormat:@"%@", _object];
    }
    
    return @"";
}

- (NSInteger)tb_integerAtIndex:(NSUInteger)_index
{
    id _object = [self tb_objectAtIndex:_index];
    
    if ( _object )
    {
        return [_object integerValue];
    }
    
    return 0;
}

- (float)tb_floatAtIndex:(NSUInteger)_index
{
    id _object = [self tb_objectAtIndex:_index];
    
    if ( _object )
    {
        return [_object floatValue];
    }
    
    return 0.0f;
}

- (double)tb_doubleAtIndex:(NSUInteger)_index
{
    id _object = [self tb_objectAtIndex:_index];
    
    if ( _object )
    {
        return [_object doubleValue];
    }
    
    return 0.0f;
}

- (BOOL)tb_boolAtIndex:(NSUInteger)_index
{
    id _object = [self tb_objectAtIndex:_index];
    
    if ( _object )
    {
        return [_object boolValue];
    }
    
    return NO;
}

@end
