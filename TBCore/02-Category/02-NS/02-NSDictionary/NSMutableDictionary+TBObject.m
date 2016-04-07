//
//  NSMutableDictionary+TBObject.m
//  Core
//
//  Created by Le Viet Bun on 4/23/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import "NSMutableDictionary+TBObject.h"

#import "TB-Header.h"

@implementation NSMutableDictionary (TBObject)

#pragma mark - Set
- (void)tb_setValue:(id)_object forKey:(NSString *)_key
{
    if ( !_object )
    {
        TBLog(@"You can't set object is nill to dictionary with key is %@", _key);
        return;
    }
    
    if ( !_key )
    {
        TBLog(@"You can't set object with key is nill");
        return;
    }
    
    [self setValue:_object forKey:_key];
}

// -
- (void)tb_setDictionary:(NSDictionary *)_value forKey:(NSString *)_key
{
    [self tb_setValue:_value forKey:_key];
}

// -
- (void)tb_setArray:(NSArray *)_value forKey:(NSString *)_key
{
    [self tb_setValue:_value forKey:_key];
}

// -
- (void)tb_setString:(NSString *)_value forKey:(NSString *)_key
{
    [self tb_setValue:_value forKey:_key];
}

- (void)tb_setInteger:(NSInteger)_value forKey:(NSString *)_key
{
    [self tb_setValue:@(_value) forKey:_key];
}

- (void)tb_setFloat:(float)_value forKey:(NSString *)_key
{
    [self tb_setValue:@(_value) forKey:_key];
}

- (void)tb_setDouble:(double)_value forKey:(NSString *)_key
{
    [self tb_setValue:@(_value) forKey:_key];
}

- (void)tb_setBool:(BOOL)_value forKey:(NSString *)_key
{
    [self tb_setValue:@(_value) forKey:_key];
}

@end
