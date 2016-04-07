//
//  TBService+Demo.h
//  MGGate
//
//  Created by BunLV on 1/5/16.
//  Copyright © 2016 BunLV. All rights reserved.
//

#import "TBService.h"

typedef void(^tb_serviceOnCompletion)(BOOL status, NSError * _Nullable error);

@interface TBService (Demo)

#pragma mark - Demo
- (void)demoAPIOnSuccess:(tb_serviceOnSuccess _Nullable)success
                 failure:(tb_serviceOnFailure _Nullable)failure;

@end
