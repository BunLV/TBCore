//
//  TBBaseObject+TBTableViewCell.h
//  TBCoreTest
//
//  Created by Bun Le Viet on 9/30/16.
//  Copyright © 2016 Bun Le Viet. All rights reserved.
//

#import "TBBaseObject.h"

@interface TBBaseObject (TBCell)

- (NSString *)tb_cellIdentifier;
- (CGFloat)tb_cellHeight;

@end
