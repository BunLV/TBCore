//
//  TBBaseObject+TBTableViewCell.m
//  TBCoreTest
//
//  Created by Bun Le Viet on 9/30/16.
//  Copyright © 2016 Bun Le Viet. All rights reserved.
//

#import "TBBaseObject+TBCell.h"

@implementation TBBaseObject (TBTableViewCell)

- (NSString *)tb_cellIdentifier
{
    NSAssert(NO, @"Need overwriter");
    
    return @"";
}

- (CGFloat)tb_cellHeight
{
    return 44.f;
}

@end
