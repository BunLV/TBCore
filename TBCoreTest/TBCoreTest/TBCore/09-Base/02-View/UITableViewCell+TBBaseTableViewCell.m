//
//  UITableViewCell+TBBaseTableViewCell.m
//  TBCoreTest
//
//  Created by Bun Le Viet on 4/7/16.
//  Copyright © 2016 Bun Le Viet. All rights reserved.
//

#import "UITableViewCell+TBBaseTableViewCell.h"

#import "TBCore.h"

@implementation UITableViewCell (TBBaseTableViewCell)

#pragma mark - UI
- (void)mappingUI
{
    TBLog(@"Need overwritter");
}

#pragma mark - Data
- (void)fetchData:(id)_object
{
    TBLog(@"Need overwritter");
}

@end
