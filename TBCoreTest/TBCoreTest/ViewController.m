//
//  ViewController.m
//  TBCoreTest
//
//  Created by Bun Le Viet on 4/6/16.
//  Copyright © 2016 Bun Le Viet. All rights reserved.
//

#import "ViewController.h"

#import "TBCore.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    TB_REGISTER_NOTIFICATION();
    
    TB_ALLOW_WARNINGS(
        
    );
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
