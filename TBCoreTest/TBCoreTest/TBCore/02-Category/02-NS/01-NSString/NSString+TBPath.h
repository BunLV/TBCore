//
//  NSString+TBPath.h
//  Core
//
//  Created by Le Viet Bun on 4/24/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (TBPath)

#pragma mark - Get path directory
+ (NSString *)tb_pathDirectoryCaseDocument;

#pragma mark - Get path file
+ (NSString *)tb_pathFileCaseDocumentDirectory:(NSString *)_fileName;

@end
