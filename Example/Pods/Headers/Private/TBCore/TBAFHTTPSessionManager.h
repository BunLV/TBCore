//
//  TBAFHTTPSessionManager.h
//  MGGate
//
//  Created by BunLV on 1/4/16.
//  Copyright © 2016 BunLV. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

typedef enum : NSUInteger {
    TB_HTTP_METHOD_GET = 5432,
    TB_HTTP_METHOD_POST,
    TB_HTTP_METHOD_PUT,
    TB_HTTP_METHOD_DELETE
} TB_HTTP_METHOD;

@interface TBAFHTTPSessionManager : AFHTTPSessionManager

#pragma mark - Utils
- (NSString *)httpMethodToString:(TB_HTTP_METHOD)httpMethod;

@end
