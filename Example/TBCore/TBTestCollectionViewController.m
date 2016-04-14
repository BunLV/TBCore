//
//  TBTestCollectionViewController.m
//  TBCore
//
//  Created by Bun Le Viet on 4/14/16.
//  Copyright © 2016 BunLV. All rights reserved.
//

#import "TBTestCollectionViewController.h"

@implementation TBTestCollectionViewController

#pragma mark - View lifecyle
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    TBLog(@"");
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

- (void)tb_willAppear
{
    [self prepareData];
    
    [self addPullToRefresh];
    [self addPullToLoadMore];
}

#pragma mark - IBAction

- (void)prepareData
{
    
}

@end
