//
//  NSUserDefaults+TBCore.h
//  Core
//
//  Created by BunLV on 5/7/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSUserDefaults (TBCore)

+ (void)tb_saveObject:(id)_object withKey:(NSString *)_key;
+ (id)tb_getObjectWithKey:(NSString *)_key;
+ (void)tb_removeObjectWithKey:(NSString *)_key;

- (void)bt_unregisterObjectWithKey:(NSString *)_key;
- (void)tb_replaceRegisteredDefaults:(NSDictionary *)dictData;

@end
