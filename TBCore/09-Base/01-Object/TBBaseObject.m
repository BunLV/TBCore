//
//  TBBaseObject.m
//  Core
//
//  Created by BunLV on 5/6/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import "TBBaseObject.h"

#import "TB-Header.h"

@implementation TBBaseObject

static NSMutableDictionary *dictShared = nil;

#pragma mark - Base
#pragma mark + Shared
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
    NSString *className = NSStringFromClass([self class]);
    
    [dictShared removeObjectForKey:className];
}

#pragma mark + Init
- (instancetype)init
{
    self = [super init];
    
    if ( self )
    {
        self.objectId = [NSString stringWithFormat:@"%.f", [[NSDate date] timeIntervalSince1970]];
        self.createDate = [NSDate date];
    }
    
    return self;
}

#pragma mark + Coder
- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [self init];
    
    if ( self )
    {
        self.objectId = [aDecoder decodeObjectForKey:@"objectId"];
        self.createDate = [aDecoder decodeObjectForKey:@"createDate"];
    }
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.objectId forKey:@"objectId"];
    [aCoder encodeObject:self.createDate forKey:@"createDate"];
}

#pragma mark + Copying
- (id)copyWithZone:(NSZone *)zone
{
    TBBaseObject *baseObject = [[TBBaseObject alloc] init];
    
    baseObject.objectId = [self.objectId copyWithZone:zone];
    baseObject.createDate = [self.createDate copyWithZone:zone];
    
    return baseObject;
}

#pragma mark + Set
- (void)tb_setInfoWithDictionary:(NSDictionary *)dictData
{
    @try {
        
        
    }
    @catch (NSException *exception) {
        
        TBLog(@"Exception : %@", exception.description);
    }
}

- (void)tb_setInfoWithArray:(NSArray *)arrData
{
    @try {
        
        
    }
    @catch (NSException *exception) {
        
        TBLog(@"Exception : %@", exception.description);
    }
}

#pragma mark + Get
- (NSDictionary *)tb_getInfoForDictionary
{
    
    
    return nil;
}

#pragma mark + User Default
- (void)tb_saveObjectToUserDefault
{
    [NSUserDefaults tb_saveObject:self withKey:NSStringFromClass([self class])];
}

+ (instancetype)tb_getObjectFromUserDefault
{
    id _object = [NSUserDefaults tb_getObjectWithKey:NSStringFromClass([self class])];
    
    if ( !_object )
    {
        _object = [[[self class] alloc] init];
    }
    
    return _object;
}

#pragma mark - More

#pragma mark - Utils

#pragma mark - Dealloc
- (void)dealloc
{
    [self tb_dealloc];
}

- (void)tb_dealloc
{
    TBLog(@"%@ dealloc", NSStringFromClass([self class]));
}

@end
