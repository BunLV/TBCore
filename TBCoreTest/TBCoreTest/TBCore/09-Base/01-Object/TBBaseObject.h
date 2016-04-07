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

@property (strong, nonatomic) NSString *objectId;
@property (strong, nonatomic) NSDate *createDate;

#pragma mark - Base
#pragma mark + Shared
+ (instancetype)tb_sharedInstance;
+ (void)tb_destroyInstance;

#pragma mark + Coder
- (id)initWithCoder:(NSCoder *)aDecoder;
- (void)encodeWithCoder:(NSCoder *)aCoder;

#pragma mark + Set
- (void)tb_setInfoWithDictionary:(NSDictionary *)dictData;
- (void)tb_setInfoWithArray:(NSArray *)arrData;

#pragma mark + Get
- (NSDictionary *)tb_getInfoForDictionary;

#pragma mark + User Default
- (void)tb_saveObjectToUserDefault;
+ (instancetype)tb_getObjectFromUserDefault;

#pragma mark - Dealloc
- (void)tb_dealloc;

#pragma mark - UITableViewCell
- (NSString *)cellIdentifier;
- (CGFloat)cellHeight;

@end
