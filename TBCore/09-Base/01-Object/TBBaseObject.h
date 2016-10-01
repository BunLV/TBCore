//
//  TBBaseObject.h
//  Core
//
//  Created by BunLV on 5/6/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

@interface TBBaseObject : NSObject <NSCopying>

+ (instancetype)tb_sharedInstance;
+ (void)tb_destroyInstance;

- (NSDictionary *)tb_getInfoForDictionary;
- (void)tb_setInfoWithDictionary:(NSDictionary *)dictData;

- (void)dealloc __attribute__((deprecated("this method was deprecated, use tb_dealloc method")));
- (void)tb_dealloc;

@end

#import "TBBaseObject+TBUserDefault.h"
#import "TBBaseObject+TBCell.h"
#import "TBBaseObject+TBMutlDelegate.h"
