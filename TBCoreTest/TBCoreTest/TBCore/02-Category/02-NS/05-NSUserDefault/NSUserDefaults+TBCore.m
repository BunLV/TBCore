//
//  NSUserDefaults+TBCore.m
//  Core
//
//  Created by BunLV on 5/7/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import "NSUserDefaults+TBCore.h"

@implementation NSUserDefaults (TBCore)

+ (void)tb_saveObject:(id)_object withKey:(NSString *)_key
{
    // Convert
    NSData *dataSave = [NSKeyedArchiver archivedDataWithRootObject:_object];
    
    // Save
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    [userDefault setObject:dataSave forKey:_key];
    [userDefault synchronize];
}

+ (id)tb_getObjectWithKey:(NSString *)_key
{
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    
    if ( [[userDefault dictionaryRepresentation].allKeys containsObject:_key] )
    {
        NSData *dataGet = [NSKeyedUnarchiver unarchiveObjectWithData:[userDefault objectForKey:_key]];
        
        return dataGet;
    }
    
    return nil;
}

+ (void)tb_removeObjectWithKey:(NSString *)_key
{
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:_key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (void)bt_unregisterObjectWithKey:(NSString *)_key
{
    NSDictionary *registeredDefaults = [[NSUserDefaults standardUserDefaults] volatileDomainForName:NSRegistrationDomain];
    if ( [registeredDefaults objectForKey:_key] )
    {
        NSMutableDictionary *mutableCopy = [NSMutableDictionary dictionaryWithDictionary:registeredDefaults];
        [mutableCopy removeObjectForKey:_key];
        
        [self tb_replaceRegisteredDefaults:[mutableCopy copy]];
    }
}

- (void)tb_replaceRegisteredDefaults:(NSDictionary *)dictData
{
    [[NSUserDefaults standardUserDefaults] setVolatileDomain:dictData forName:NSRegistrationDomain];
}

@end
