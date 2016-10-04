//
//  UICollectionViewCell+TBBaseCollectionViewCell.h
//  Pods
//
//  Created by Bun Le Viet on 4/14/16.
//
//

#import <UIKit/UIKit.h>

@interface UICollectionViewCell (TBBaseCollectionViewCell)

#pragma mark - UI
- (void)mappingUI;

#pragma mark - Data
- (void)fetchData:(id)_object;

@end
