//
//  NSDictionary+TBObject.m
//  Core
//
//  Created by BunLV on 4/12/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import "NSDictionary+TBObject.h"

#import "TBCore.h"

@implementation NSDictionary (TBObject)

#pragma mark - Check
- (BOOL)tb_containsKey:(NSString *)_key
{
    return [self.allKeys tb_containsObject:_key];
}

- (BOOL)tb_containsObject:(id)_object
{
    return [self.allValues tb_containsObject:_object];
}

- (BOOL)tb_containsObjectForKey:(NSString *)_key
{
    id _object = [self tb_objectForKey:_key];
    
    return _object ? YES : NO;
}

#pragma mark - Get
// - 
- (id)tb_objectForKey:(NSString *)_key
{
    if ( !_key )
    {
        return nil;
    }
    
    id _object = [self objectForKey:_key];
    
    if ( !_object || _object == NULL || _object == [NSNull null] )
    {
        TBLog(@"Not found object in dictionary for key is %@", _key);
        
        return nil;
    }
    
    return _object;
}

// -
- (NSDictionary *)tb_dictionaryForKey:(NSString *)_key
{
    id _object = [self tb_objectForKey:_key];
    
    if ( _object && [_object isKindOfClass:[NSDictionary class]] )
    {
        return _object;
    }
    
    return [NSDictionary new];
}

- (NSMutableDictionary *)tb_mutableDictionaryForKey:(NSString *)_key
{
    id _object = [self tb_objectForKey:_key];
    
    if ( _object && [_object isKindOfClass:[NSDictionary class]] )
    {
        return [NSMutableDictionary dictionaryWithDictionary:_object];
    }
    
    return [NSMutableDictionary new];
}

// -
- (NSArray *)tb_arrayForKey:(NSString *)_key
{
    id _object = [self tb_objectForKey:_key];
    
    if ( _object && [_object isKindOfClass:[NSArray class]] )
    {
        return _object;
    }
    
    return [NSArray new];
}

- (NSMutableArray *)tb_mutableArrayForKey:(NSString *)_key
{
    id _object = [self tb_objectForKey:_key];
    
    if ( _object && [_object isKindOfClass:[NSArray class]] )
    {
        return [NSMutableArray arrayWithArray:_object];
    }
    
    return [NSMutableArray new];
}

// - 
- (NSString *)tb_stringForKey:(NSString *)_key
{
    id _object = [self tb_objectForKey:_key];
    
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

- (NSInteger)tb_integerForKey:(NSString *)_key
{
    id _object = [self tb_objectForKey:_key];
    
    if ( _object )
    {
        return [_object integerValue];
    }
    
    return 0;
}

- (float)tb_floatForKey:(NSString *)_key
{
    id _object = [self tb_objectForKey:_key];
    
    if ( _object )
    {
        return [_object floatValue];
    }
    
    return 0.0f;
}

- (double)tb_doubleForKey:(NSString *)_key
{
    id _object = [self tb_objectForKey:_key];
    
    if ( _object )
    {
        return [_object doubleValue];
    }
    
    return 0.0f;
}

- (BOOL)tb_boolForKey:(NSString *)_key
{
    id _object = [self tb_objectForKey:_key];
    
    if ( _object )
    {
        return [_object boolValue];
    }
    
    return NO;
}

@end
