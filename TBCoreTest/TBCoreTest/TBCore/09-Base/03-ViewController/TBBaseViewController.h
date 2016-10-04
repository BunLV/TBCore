//
//  TBBaseViewController.h
//  Core
//
//  Created by BunLV on 5/7/15.
//  Copyright (c) 2015 Core. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TBBaseViewController : UIViewController
{
    
}

#pragma mark - View lifecycle
- (void)tb_dealloc;

#pragma mark + Appear
- (void)tb_willAppear;
- (void)tb_didAppear;
- (void)tb_willDisappear;
- (void)tb_didDisappear;

@end
