//
//  TBBaseList.m
//  TBCoreTest
//
//  Created by Bun Le Viet on 4/7/16.
//  Copyright © 2016 Bun Le Viet. All rights reserved.
//

#import "TBBaseList.h"

@implementation TBBaseList

#pragma mark -
- (instancetype)init
{
    self = [super init];
    
    if ( self )
    {
        self.arrDataList = [NSMutableArray new];
    }
    
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if ( self )
    {
        
    }
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [super encodeWithCoder:aCoder];
    
    
}

#pragma mark -
- (void)setInfoWithDictionary:(NSDictionary *)dictData
{
    [super tb_setInfoWithDictionary:dictData];
    
    @try {
        
        
    }
    @catch (NSException *exception) {
        
        NSLog(@"Exception: %@", exception.description);
    }
}

- (void)setInfoWithArray:(NSArray *)arrData
{
    [super tb_setInfoWithArray:arrData];
    
    @try {
        
        
    }
    @catch (NSException *exception) {
        
        NSLog(@"Exception: %@", exception.description);
    }
}

@end
