//
//  TBService.h
//  MGGate
//
//  Created by BunLV on 1/4/16.
//  Copyright © 2016 BunLV. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TBAFHTTPSessionManager.h"

#ifdef DEBUG
#   define SERVICE_BASE_URL @"http://levietbun.com/dev/ws"
#else
#   define SERVICE_BASE_URL @"http://levietbun.com/live/ws"
#endif

// Service success
typedef void(^tb_serviceOnSuccess)(NSURLSessionDataTask * _Nullable sessionDataTask, id _Nullable responseData);

// Service failure
typedef void(^tb_serviceOnFailure)(NSURLSessionDataTask * _Nullable sessionDataTask, NSError * _Nonnull error);


@interface TBService : NSObject

@property (strong, nonnull) TBAFHTTPSessionManager *sessionManager;
@property (strong, nonnull) NSMutableArray *arrDataTasks;

#pragma mark -
+ (instancetype _Nullable)sharedInstance;

#pragma mark -
- (void)cancelAllSessionDataTask;

#pragma mark -
- (void)callAPIWithPath:(NSString * _Nullable)path
         withHttpMethod:(TB_HTTP_METHOD)httpMethod
             withParams:(NSDictionary * _Nullable)dictParams
       withHeaderParams:(NSDictionary * _Nullable)dictHeaderParams
                success:(tb_serviceOnSuccess _Nullable)success
                failure:(tb_serviceOnFailure _Nullable)failure;

- (void)callAPIWithPath:(NSString * _Nullable)path
             withParams:(NSDictionary * _Nullable)dictParams
       withHeaderParams:(NSDictionary * _Nullable)dictHeaderParams
               withData:(NSData * _Nullable)data withName:(NSString * _Nullable)name withFileName:(NSString * _Nullable)fileName withMimeType:(NSString * _Nullable)mimeType
                success:(tb_serviceOnSuccess _Nullable)success
                failure:(tb_serviceOnFailure _Nullable)failure
               progress:(nullable void (^)(NSProgress * _Nonnull))uploadProgress;

@end
