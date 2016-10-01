//
//  TBBaseObject.m
//  Core
//
//  Created by BunLV on 5/6/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import "TBBaseObject.h"
#import "TBCore.h"

@interface TBBaseObject ()

@property (strong, nonatomic) NSPointerArray *arrDelegate;

@end

@implementation TBBaseObject

static NSMutableDictionary *dictShared = nil;

#pragma mark - Instance
+ (instancetype)tb_sharedInstance
{
    TBBaseObject *shared = nil;
    
    @synchronized(self) {
        
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            
            dictShared = [NSMutableDictionary new];
        });
        
        NSString *className = NSStringFromClass([self class]);
        shared = [dictShared objectForKey:className];
        
        if ( !shared )
        {
            shared = [[[self class] alloc] init];
            [dictShared setValue:shared forKey:className];
        }
    }
    
    return shared;
}

+ (void)tb_destroyInstance
{
    @synchronized (self) {

        if ( dictShared )
        {
            NSString *className = NSStringFromClass([self class]);
            [dictShared removeObjectForKey:className];
        }
    }
}

#pragma mark - Copying
- (id)copyWithZone:(NSZone *)zone
{
    TBBaseObject *baseObject = [[TBBaseObject alloc] init];
    
    return baseObject;
}

#pragma mark - Dealloc
- (void)dealloc
{
    [self tb_dealloc];
}

- (void)tb_dealloc
{
    
}

#pragma mark - Set Get
- (NSDictionary *)tb_getInfoForDictionary
{
    return [NSDictionary new];
}

- (void)tb_setInfoWithDictionary:(NSDictionary *)dictData
{
    @try {
        
        
    }
    @catch (NSException *exception) {
        
        TBLog(@"Exception : %@", exception.description);
    }
}

@end
