//
//  TBViewController.m
//  TBCore
//
//  Created by BunLV on 04/06/2016.
//  Copyright (c) 2016 BunLV. All rights reserved.
//

#import "TBViewController.h"
#import <TBCore/TB-Header.h>

@interface TBViewController ()

@end

@implementation TBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [UIAlertView tb_showAlertViewWithMessage:@"" withCancelButtonTitle:@"" tapBlock:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated
}

@end
