//
//  TBService+Demo.m
//  MGGate
//
//  Created by BunLV on 1/5/16.
//  Copyright © 2016 BunLV. All rights reserved.
//

#import "TBService+Demo.h"

@implementation TBService (Demo)

#pragma mark - Init app
- (void)demoAPIOnSuccess:(tb_serviceOnSuccess _Nullable)success
                 failure:(tb_serviceOnFailure _Nullable)failure
{
    NSString *path = @"demoapi.php";
    
    NSDictionary *dictHeaderParams = [self getHeaderParams];
    
    [self callAPIWithPath:path withHttpMethod:TB_HTTP_METHOD_GET withParams:nil withHeaderParams:dictHeaderParams success:success failure:failure];
}

#pragma mark - Header params
- (NSDictionary *)getHeaderParams
{
    NSMutableDictionary *dictHeaderParams = [NSMutableDictionary new];
    
    return dictHeaderParams;
}

@end
