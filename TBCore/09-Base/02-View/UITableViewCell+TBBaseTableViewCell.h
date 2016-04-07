//
//  UITableViewCell+TBBaseTableViewCell.h
//  TBCoreTest
//
//  Created by Bun Le Viet on 4/7/16.
//  Copyright © 2016 Bun Le Viet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableViewCell (TBBaseTableViewCell)

#pragma mark - UI
- (void)mappingUI;

#pragma mark - Data
- (void)fetchData:(id)_object;

@end
