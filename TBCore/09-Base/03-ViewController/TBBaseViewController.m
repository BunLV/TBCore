//
//  TBBaseViewController.m
//  Core
//
//  Created by BunLV on 5/7/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import "TBBaseViewController.h"

#import "TBCore.h"

@interface TBBaseViewController ()
{
    BOOL isWillAppearFirst,     isDidAppearFirst;
    BOOL isWillDisappearFirst,  isDidDisappearFirst;
}

@end

@implementation TBBaseViewController

#pragma mark - Init
- (id)init
{
    self = [super init];
    
    if ( self )
    {
        
    }
    
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if ( self )
    {
        
    }
    
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if ( self )
    {
        
    }
    
    return self;
}

#pragma mark - View lifecycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    isWillAppearFirst = YES;
    isDidAppearFirst = YES;
    isWillDisappearFirst = YES;
    isDidDisappearFirst = YES;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
        
    if ( isWillAppearFirst )
    {
        isWillAppearFirst = NO;
        
        [self tb_willAppear];
    }
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    if ( isDidAppearFirst )
    {
        isDidAppearFirst = NO;
        
        [self tb_didAppear];
    }
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    if ( isWillDisappearFirst )
    {
        isWillDisappearFirst = NO;
        
        [self tb_willDisappear];
    }
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    
    if ( isDidDisappearFirst )
    {
        isDidDisappearFirst = NO;
        
        [self tb_didDisappear];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    
}

- (void)dealloc
{    
    [self tb_dealloc];
}

- (void)tb_dealloc
{
    
}

#pragma mark + Appear
- (void)tb_willAppear
{
    
}

- (void)tb_didAppear
{
    
}

- (void)tb_willDisappear
{
    
}

- (void)tb_didDisappear
{
    
}

@end
