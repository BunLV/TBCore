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
- (NSURL *)applicationDocumentsDirectory:(NSSearchPathDirectory)_searchPathDirectory
{
    return [[[NSFileManager defaultManager] URLsForDirectory:_searchPathDirectory inDomains:NSUserDomainMask] lastObject];
}

#pragma mark - Get path file
- (NSString *)tb_pathFileCaseDocumentDirectory
{
    NSURL *url = [self applicationDocumentsDirectory:NSDocumentDirectory];
    url = [url URLByAppendingPathComponent:self];
    
    return url.path;
}

@end
