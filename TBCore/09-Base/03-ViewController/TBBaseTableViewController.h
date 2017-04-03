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
- (void)didSelectWithObject:(id)_object;
- (void)didSelectWithObject:(id)_object withCell:(UITableViewCell *)_cell;

#pragma mark + SVPullToRefresh
- (void)addPullToRefresh;
- (void)processForRefresh;
- (void)stopRefreshAnimating;

- (void)addPullToLoadMore;
- (void)processForLoadMore;
- (void)stopLoadMoreAnimating;

#pragma mark + Utils
- (void)registerCellWithClass:(Class)className;

#pragma mark - Data
- (void)reloadData;

- (void)prepareData;
- (void)loadDataWithOffSet:(NSInteger)offSet;
- (void)displayError:(NSError *)error;

@end
