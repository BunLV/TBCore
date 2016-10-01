//
//  TBBaseList.m
//  TBCoreTest
//
//  Created by Bun Le Viet on 4/7/16.
//  Copyright © 2016 Bun Le Viet. All rights reserved.
//

#import "TBBaseList.h"

@implementation TBBaseList

#pragma mark - Copying
- (id)copyWithZone:(NSZone *)zone
{
    TBBaseList *baseList = [[TBBaseList alloc] init];
    
    return baseList;
}

#pragma mark -
- (instancetype)init
{
    self = [super init];
    
    if ( self )
    {
        self.arrData = [NSMutableArray new];
    }
    
    return self;
}

- (void)tb_dealloc
{
    [super tb_dealloc];
}

#pragma mark -
- (NSArray *)tb_getInfoForArray
{
    return [NSArray new];
}

- (void)tb_setInfoWithArray:(NSArray *)arrData
{
    @try {
        
        
    }
    @catch (NSException *exception) {
        
        NSLog(@"Exception: %@", exception.description);
    }
}

@end
