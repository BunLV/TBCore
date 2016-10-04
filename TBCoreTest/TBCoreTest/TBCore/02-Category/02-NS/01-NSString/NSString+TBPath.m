//
//  NSString+TBPath.m
//  Core
//
//  Created by Le Viet Bun on 4/24/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import "NSString+TBPath.h"

@implementation NSString (TBPath)

#pragma mark - Private
+ (NSURL *)tb_applicationDirectory:(NSSearchPathDirectory)_searchPathDirectory
{
    NSURL *urlDirectory = [[[NSFileManager defaultManager] URLsForDirectory:_searchPathDirectory inDomains:NSUserDomainMask] lastObject];
    
    return urlDirectory;
}

#pragma mark - Get path directory
+ (NSString *)tb_pathDirectoryCaseDocument
{
    NSURL *urlDocument = [[self class] tb_applicationDirectory:NSDocumentDirectory];
    
    return urlDocument.path;
}

#pragma mark - Get path file
+ (NSString *)tb_pathFileCaseDocumentDirectory:(NSString *)_fileName
{
    NSString *path = [self tb_pathDirectoryCaseDocument];
    NSURL *url = [NSURL fileURLWithPath:path];
    url = [url URLByAppendingPathComponent:_fileName];
    
    return url.path;
}

@end
