//
//  TBBaseTableViewCell.h
//  TBCoreTest
//
//  Created by Bun Le Viet on 4/7/16.
//  Copyright © 2016 Bun Le Viet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TBBaseTableViewCell : UITableViewCell

@property (assign, nonatomic) BOOL cell_selected;

#pragma mark - UI
- (void)mappingUI;

#pragma mark - Data
- (void)fetchData:(id)_object;

@end
