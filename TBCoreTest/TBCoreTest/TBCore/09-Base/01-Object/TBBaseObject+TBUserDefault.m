//
//  TBBaseObject+TBUserDefault.m
//  TBCoreTest
//
//  Created by Bun Le Viet on 9/30/16.
//  Copyright © 2016 Bun Le Viet. All rights reserved.
//

#import "TBBaseObject+TBUserDefault.h"
#import "TBCore.h"

@implementation TBBaseObject (TBUserDefault)

#pragma mark - UserDefault
- (void)tb_saveObjectToUserDefault
{
    NSString *key = [NSString stringWithFormat:@"%@_UserDefault", NSStringFromClass([self class])];
    [NSUserDefaults tb_saveObject:self withKey:key];
}

+ (instancetype)tb_getObjectFromUserDefault
{
    NSString *key = [NSString stringWithFormat:@"%@_UserDefault", NSStringFromClass([self class])];
    id _object = [NSUserDefaults tb_getObjectWithKey:key];
    
    if ( !_object )
    {
        _object = [[[self class] alloc] init];
    }
    
    return _object;
}

@end
