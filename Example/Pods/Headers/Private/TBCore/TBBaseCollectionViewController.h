//
//  TBBaseCollectionViewController.h
//  Pods
//
//  Created by Bun Le Viet on 4/14/16.
//
//

#import <SVPullToRefresh/SVPullToRefresh.h>

#import "TBBaseViewController.h"

@interface TBBaseCollectionViewController : TBBaseViewController

@property (weak, nonatomic) IBOutlet UICollectionView *clvData;

@property (strong, nonatomic) NSMutableArray *arrData;

#pragma mark - UITableView
#pragma marl + Datasource
- (void)cellForRow:(UICollectionViewCell *)_cell;

#pragma mark + Delegate
- (void)didSelectWithObject:(id)_object;
- (void)didSelectWithObject:(id)_object withCell:(UICollectionViewCell *)_cell;

#pragma mark + SVPullToRefresh
- (void)addPullToRefresh;
- (void)processForRefresh;

- (void)addPullToLoadMore;
- (void)processForLoadMore;

#pragma mark - Data
- (void)reloadData;

- (void)prepareData;
- (void)loadDataWithOffSet:(NSInteger)offSet;
- (void)displayError:(NSError *)error;

@end
