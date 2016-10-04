//
//  TBAFHTTPSessionManager.m
//  MGGate
//
//  Created by BunLV on 1/4/16.
//  Copyright © 2016 BunLV. All rights reserved.
//

#import "TBAFHTTPSessionManager.h"

@implementation TBAFHTTPSessionManager

#pragma mark - Utils
- (NSString *)httpMethodToString:(TB_HTTP_METHOD)httpMethod
{
    NSString *method = @"";
    
    switch (httpMethod)
    {
        case TB_HTTP_METHOD_GET:
        {
            method = @"GET";
            
            break;
        }
            
        case TB_HTTP_METHOD_POST:
        {
            method = @"POST";
            
            break;
        }
            
        case TB_HTTP_METHOD_PUT:
        {
            method = @"PUT";
            
            break;
        }
            
        case TB_HTTP_METHOD_DELETE:
        {
            method = @"DELETE";
            
            break;
        }
            
        default:
        {
            method = @"GET";
            
            break;
        }
    }
    
    return method;
}

@end
