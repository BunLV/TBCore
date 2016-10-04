//
//  TBService.m
//  MGGate
//
//  Created by BunLV on 1/4/16.
//  Copyright © 2016 BunLV. All rights reserved.
//

#import "TBService.h"

@interface TBService ()
{
    
}

@end

@implementation TBService

#pragma mark - 
+ (instancetype)sharedInstance
{
    static TBService *service = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        
        service = [[TBService alloc] init];
    });
    
    return service;
}

- (id)init
{
    self = [super init];
    
    if ( self )
    {
        NSURL *baseUrl = [NSURL URLWithString:SERVICE_BASE_URL];
        
        self.sessionManager = [[TBAFHTTPSessionManager alloc] initWithBaseURL:baseUrl sessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];

        self.sessionManager.requestSerializer.timeoutInterval = 30.f;
        self.sessionManager.securityPolicy.allowInvalidCertificates = YES;
        
        self.sessionManager.requestSerializer = [AFJSONRequestSerializer serializer];
        self.sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/html", @"text/xml", @"application/json", nil];
        
        self.arrDataTasks = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void)dealloc
{
    [self cancelAllSessionDataTask];
}

#pragma mark -
- (void)cancelAllSessionDataTask
{
    for ( NSURLSessionDataTask *dataTask in self.arrDataTasks )
    {
        [dataTask cancel];
    }
}

#pragma mark -
- (void)callAPIWithPath:(NSString * _Nullable)path
         withHttpMethod:(TB_HTTP_METHOD)httpMethod
             withParams:(NSDictionary * _Nullable)dictParams
       withHeaderParams:(NSDictionary * _Nullable)dictHeaderParams
                success:(tb_serviceOnSuccess _Nullable)success
                failure:(tb_serviceOnFailure _Nullable)failure
{
    NSLog(@"- - - - - - - - - - - - - - - - - - - - - - - - - - Request start - - - - - - - - - - - - - - - - - - - - - - - - - -");
    NSLog(@"Request url: %@", [NSURL URLWithString:path relativeToURL:[NSURL URLWithString:SERVICE_BASE_URL]]);
    NSLog(@"METHOD: %@", [self.sessionManager httpMethodToString:httpMethod]);
    if ( dictParams )
    {
        NSLog(@"Params (body): %@", dictParams);
    }
    if ( dictHeaderParams )
    {
        NSLog(@"Params (header): %@", dictHeaderParams);
    }
    NSLog(@"- - - - - - - - - - - - - - - - - - - - - - - - - - Request end - - - - - - - - - - - - - - - - - - - - - - - - - -");
    
    [self configHeaderParams:dictHeaderParams];
    
    __weak typeof(self) blockSelf = self;
    
    switch (httpMethod)
    {
        case TB_HTTP_METHOD_GET:
        {
            NSURLSessionDataTask *dataTask = [self.sessionManager GET:path parameters:dictParams progress:nil success:^(NSURLSessionTask *task, id responseObject) {
                
                [blockSelf successWithPath:path withSessionTask:task withResponseData:UIUserNotificationActionResponseTypedTextKey onSuccess:success];
                
            } failure:^(NSURLSessionTask *task, NSError *error) {
                
                [blockSelf failureWithPath:path withSessionTask:task withError:error onFailure:failure];
            }];
            
            [self.arrDataTasks addObject:dataTask];
            
            break;
        }
            
        case TB_HTTP_METHOD_POST:
        {
            NSURLSessionDataTask *dataTask = [self.sessionManager POST:path parameters:dictParams progress:nil success:^(NSURLSessionTask *task, id responseObject) {
                
                [blockSelf successWithPath:path withSessionTask:task withResponseData:UIUserNotificationActionResponseTypedTextKey onSuccess:success];
                
            } failure:^(NSURLSessionTask *task, NSError *error) {
                
                [blockSelf failureWithPath:path withSessionTask:task withError:error onFailure:failure];
            }];
            
            [self.arrDataTasks addObject:dataTask];
            
            break;
        }
            
        case TB_HTTP_METHOD_PUT:
        {
            NSURLSessionDataTask *dataTask = [self.sessionManager PUT:path parameters:dictParams success:^(NSURLSessionTask *task, id responseObject) {
                
                [blockSelf successWithPath:path withSessionTask:task withResponseData:UIUserNotificationActionResponseTypedTextKey onSuccess:success];
                
            } failure:^(NSURLSessionTask *task, NSError *error) {
                
                [blockSelf failureWithPath:path withSessionTask:task withError:error onFailure:failure];
            }];
            
            [self.arrDataTasks addObject:dataTask];
            
            break;
        }
            
        case TB_HTTP_METHOD_DELETE:
        {
            NSURLSessionDataTask *dataTask = [self.sessionManager DELETE:path parameters:dictParams success:^(NSURLSessionTask *task, id responseObject) {
                
                [blockSelf successWithPath:path withSessionTask:task withResponseData:UIUserNotificationActionResponseTypedTextKey onSuccess:success];
                
            } failure:^(NSURLSessionTask *task, NSError *error) {
                
                [blockSelf failureWithPath:path withSessionTask:task withError:error onFailure:failure];
            }];
            
            [self.arrDataTasks addObject:dataTask];
            
            break;
        }
            
        default:
        {
            [self callAPIWithPath:path withHttpMethod:TB_HTTP_METHOD_GET withParams:dictParams withHeaderParams:dictHeaderParams success:success failure:failure];
            
            break;
        }
    }
}

- (void)callAPIWithPath:(NSString * _Nullable)path
             withParams:(NSDictionary * _Nullable)dictParams
       withHeaderParams:(NSDictionary * _Nullable)dictHeaderParams
               withData:(NSData * _Nullable)data withName:(NSString * _Nullable)name withFileName:(NSString * _Nullable)fileName withMimeType:(NSString * _Nullable)mimeType
                success:(tb_serviceOnSuccess _Nullable)success
                failure:(tb_serviceOnFailure _Nullable)failure
{
    NSLog(@"- - - - - - - - - - - - - - - - - - - - - - - - - - Request start - - - - - - - - - - - - - - - - - - - - - - - - - -");
    NSLog(@"Request url: %@", [NSURL URLWithString:path relativeToURL:[NSURL URLWithString:SERVICE_BASE_URL]]);
    if ( dictParams )
    {
        NSLog(@"Params (body): %@", dictParams);
    }
    if ( dictHeaderParams )
    {
        NSLog(@"Params (header): %@", dictHeaderParams);
    }
    NSLog(@"- - - - - - - - - - - - - - - - - - - - - - - - - - Request end - - - - - - - - - - - - - - - - - - - - - - - - - -");
    
    [self configHeaderParams:dictHeaderParams];
    
    __weak typeof(self) blockSelf = self;
    
    NSURLSessionDataTask *dataTask = [self.sessionManager POST:path parameters:dictParams constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        
        [formData appendPartWithFileData:data name:name fileName:fileName mimeType:mimeType];
        
    } progress:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        
        [blockSelf successWithPath:path withSessionTask:task withResponseData:UIUserNotificationActionResponseTypedTextKey onSuccess:success];
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        
        [blockSelf failureWithPath:path withSessionTask:task withError:error onFailure:failure];
    }];
    
    [self.arrDataTasks addObject:dataTask];
}

#pragma mark +
- (void)successWithPath:(NSString *)path withSessionTask:(NSURLSessionTask *)task withResponseData:(id)responseData onSuccess:(tb_serviceOnSuccess)success
{
    NSLog(@"- - - - - - - - - - - - - - - - - - - - - - - - - - Response start - - - - - - - - - - - - - - - - - - - - - - - - - -");
    NSLog(@"Response: %@", responseData);
    NSLog(@"- - - - - - - - - - - - - - - - - - - - - - - - - - Response end - - - - - - - - - - - - - - - - - - - - - - - - - -");
    
    if ( success )
    {
        success ([task copy], responseData);
    }
}

- (void)failureWithPath:(NSString *)path withSessionTask:(NSURLSessionTask *)task withError:(NSError *)error onFailure:(tb_serviceOnFailure)failure
{
    NSLog(@"- - - - - - - - - - - - - - - - - - - - - - - - - - Response start - - - - - - - - - - - - - - - - - - - - - - - - - -");
    NSLog(@"Error: %@", error.localizedDescription);
    NSLog(@"- - - - - - - - - - - - - - - - - - - - - - - - - - Response end - - - - - - - - - - - - - - - - - - - - - - - - - -");
    
    if ( failure )
    {
        failure ([task copy], error);
    }
}

#pragma mark - Params
- (void)configHeaderParams:(NSDictionary *)dictHeaderParams
{
    if ( dictHeaderParams )
    {
        for ( NSString *key in dictHeaderParams.allKeys )
        {
            [self.sessionManager.requestSerializer setValue:dictHeaderParams[key] forHTTPHeaderField:key];
        }
    }
}

@end
