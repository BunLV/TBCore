//
//  TBBaseObject+TBMutlDelegate.m
//  TBCoreTest
//
//  Created by Bun Le Viet on 9/30/16.
//  Copyright © 2016 Bun Le Viet. All rights reserved.
//

#import "TBBaseObject+TBMutlDelegate.h"
#import "TBCore.h"

@implementation TBBaseObject (TBMutlDelegate)

@dynamic arrDelegate;

#pragma mark - Add & remove
- (void)tb_addDelegate:(id)delegate
{
    if ( !self.arrDelegate )
    {
        self.arrDelegate = [NSPointerArray weakObjectsPointerArray];
    }
    
    NSInteger index = [self tb_indexOfDelegate:delegate];
    if ( index == NSNotFound )
    {
        [self.arrDelegate addPointer:(__bridge void * _Nullable)(delegate)];
    }
}

- (void)tb_removeDelegate:(id)delegate
{
    if ( !self.arrDelegate )
    {
        return;
    }
    
    NSInteger index = [self tb_indexOfDelegate:delegate];
    if ( index != NSNotFound )
    {
        [self.arrDelegate removePointerAtIndex:index];
    }
}

- (void)tb_removeAllDelegate
{
    if ( !self.arrDelegate )
    {
        return;
    }
    
    for ( NSInteger index = self.arrDelegate.count - 1; index >= 0; index-- )
    {
        [self.arrDelegate removePointerAtIndex:index];
    }
}

#pragma mark - Responds
- (void)tb_responds:(void(^)(id delegate))block
{
    NSArray *arrData = [self.arrDelegate copy];
    for ( id object in arrData )
    {
        if ( block )
        {
            block (object);
        }
    }
}

#pragma mark - Utils
- (NSInteger)tb_indexOfDelegate:(id)delegate
{
    for ( NSInteger index = 0; index < self.arrDelegate.count; index++ )
    {
        id object = [self.arrDelegate pointerAtIndex:index];
        if ( [object isEqual:delegate] )
        {
            return index;
        }
    }
    
    return NSNotFound;
}

@end
