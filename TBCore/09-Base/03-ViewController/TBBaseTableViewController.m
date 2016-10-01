//
//  TBBaseTableViewController.m
//  TBCoreTest
//
//  Created by Bun Le Viet on 4/7/16.
//  Copyright © 2016 Bun Le Viet. All rights reserved.
//

#import "TBBaseTableViewController.h"

#import "TBCore.h"

@implementation TBBaseTableViewController

#pragma mark - View lifecycle
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

#pragma mark - UITableView
#pragma mark + DataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.arrData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TBBaseObject *object = [self.arrData objectAtIndex:indexPath.row];
    
    NSString *cellIdentifier = object.tb_cellIdentifier;
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if ( !cell )
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CELL_FAKE"];
        
        return cell;
    }
    
    [self cellForRow:cell];
    
    [cell mappingUI];
    [cell fetchData:object];
    
    return cell;
}

- (void)cellForRow:(UITableViewCell *)_cell
{
    
}

#pragma mark + Delegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TBBaseObject *object = [self.arrData objectAtIndex:indexPath.row];
    
    return object.tb_cellHeight;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    TBBaseObject *object = [self.arrData objectAtIndex:indexPath.row];
    
    [self didSelectWithObject:object];
    [self didSelectWithObject:object withCell:[tableView cellForRowAtIndexPath:indexPath]];
}

- (void)didSelectWithObject:(id)_object
{
    
}

- (void)didSelectWithObject:(id)_object withCell:(UITableViewCell *)_cell
{
    
}

#pragma mark + SVPullToRefresh
- (void)addPullToRefresh
{
    __weak typeof(self) blockSelf = self;
    
    [self.tbvData addPullToRefreshWithActionHandler:^{
        
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
    
    [self.tbvData addInfiniteScrollingWithActionHandler:^{
        
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
    self.tbvData.dataSource = (id)self;
    self.tbvData.delegate = (id)self;
    
    [self.tbvData reloadData];
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
