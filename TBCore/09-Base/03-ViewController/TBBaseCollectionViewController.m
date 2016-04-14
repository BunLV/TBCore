//
//  TBBaseCollectionViewController.m
//  Pods
//
//  Created by Bun Le Viet on 4/14/16.
//
//

#import "TBBaseCollectionViewController.h"

#import "TBCore.h"

@interface TBBaseCollectionViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@end

@implementation TBBaseCollectionViewController

#pragma mark - View lifecyle
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.arrData = [NSMutableArray new];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    
}

- (void)tb_dealloc
{
    [super tb_dealloc];
}

#pragma mark - IBAction

#pragma mark - UICollectionView
#pragma mark + DataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.arrData.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    TBBaseObject *object = [self.arrData tb_objectAtIndex:indexPath.row];
    
    NSString *cellIdentifier = object.cellIdentifier;
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    
    if ( !cell )
    {
        cell = [[UICollectionViewCell alloc] initWithFrame:CGRectZero];
        
        return cell;
    }
    
    [self cellForRow:cell];
    
    [cell mappingUI];
    [cell fetchData:object];
    
    return cell;
}

- (void)cellForRow:(UICollectionViewCell *)_cell
{
    
}

#pragma mark + Delegate
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    [collectionView deselectItemAtIndexPath:indexPath animated:YES];
    
    TBBaseObject *object = [self.arrData objectAtIndex:indexPath.row];
    
    [self didSelectWithObject:object];
    [self didSelectWithObject:object withCell:[collectionView cellForItemAtIndexPath:indexPath]];
}

- (void)didSelectWithObject:(id)_object
{
    
}

- (void)didSelectWithObject:(id)_object withCell:(UICollectionViewCell *)_cell
{
    
}

#pragma mark + SVPullToRefresh
- (void)addPullToRefresh
{
    __weak typeof(self) blockSelf = self;
    
    self.clvData.alwaysBounceVertical = YES;
    [self.clvData addPullToRefreshWithActionHandler:^{
        
        [blockSelf processForRefresh];
    }];
}

- (void)processForRefresh
{
    [self loadDataWithOffSet:TB_OFF_SET_FIRST];
}

- (void)addPullToLoadMore
{
    __weak typeof(self) blockSelf = self;
    
    [self.clvData addInfiniteScrollingWithActionHandler:^{
        
        [blockSelf processForLoadMore];
    }];
}

- (void)processForLoadMore
{
    TBLog(@"Need overwriter");
}

#pragma mark - Data
- (void)reloadData
{
    self.clvData.dataSource = (id)self;
    self.clvData.delegate = (id)self;
    
    [self.clvData reloadData];
}

- (void)prepareData
{
    
}

- (void)loadDataWithOffSet:(NSInteger)offSet
{
    TBLog(@"Need overwriter");
}

- (void)displayError:(NSError *)error
{
    TBLog(@"Need overwriter");
}

@end
