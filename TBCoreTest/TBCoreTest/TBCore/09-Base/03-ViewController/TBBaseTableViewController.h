//
//  TBBaseTableViewController.h
//  TBCoreTest
//
//  Created by Bun Le Viet on 4/7/16.
//  Copyright © 2016 Bun Le Viet. All rights reserved.
//

#import <SVPullToRefresh/SVPullToRefresh.h>

#import "TBBaseViewController.h"

@interface TBBaseTableViewController : TBBaseViewController

@property (weak, nonatomic) IBOutlet UITableView *tbvData;

@property (strong, nonatomic) NSMutableArray *arrData;

#pragma mark - UITableView
#pragma marl + Datasource
- (void)cellForRow:(UITableViewCell *)_cell;

#pragma mark + Delegate
- (void)didSelectedWithObject:(id)_object;
- (void)didSelectedWithObject:(id)_object withCell:(UITableViewCell *)_cell;

#pragma mark + SVPullToRefresh
- (void)addPullToRefresh;
- (void)processForRefresh;

- (void)addPullToLoadMore;
- (void)processForLoadMore;

#pragma mark - Data
- (void)prepareData;
- (void)reloadData;
- (void)loadDataWithOffSet:(NSInteger)offSet;
- (void)displayError:(NSError *)error;

@end
