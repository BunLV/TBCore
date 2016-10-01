//
//  TBBaseObject+TBUserDefault.h
//  TBCoreTest
//
//  Created by Bun Le Viet on 9/30/16.
//  Copyright © 2016 Bun Le Viet. All rights reserved.
//

#import "TBBaseObject.h"

@interface TBBaseObject (TBUserDefault)

#pragma mark - UserDefault
- (void)tb_saveObjectToUserDefault;
+ (instancetype)tb_getObjectFromUserDefault;

@end
