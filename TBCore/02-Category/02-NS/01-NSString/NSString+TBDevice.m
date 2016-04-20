//
//  NSString+TBDevice.m
//  Core
//
//  Created by Le Viet Bun on 4/24/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import "NSString+TBDevice.h"

@implementation NSString (TBDevice)

#pragma mark - Get
+ (NSString *)tb_UUIDString
{
    return [[[UIDevice currentDevice] identifierForVendor] UUIDString];
}

@end
