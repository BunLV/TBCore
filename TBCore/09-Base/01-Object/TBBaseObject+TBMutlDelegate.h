//
//  TBBaseObject+TBMutlDelegate.h
//  TBCoreTest
//
//  Created by Bun Le Viet on 9/30/16.
//  Copyright © 2016 Bun Le Viet. All rights reserved.
//

#import "TBBaseObject.h"

@interface TBBaseObject (TBMutlDelegate)

@property (nonatomic) NSPointerArray *arrDelegate;

- (void)tb_addDelegate:(id)delegate;
- (void)tb_removeDelegate:(id)delegate;
- (void)tb_removeAllDelegate;

- (void)tb_responds:(void(^)(id delegate))block;

@end
