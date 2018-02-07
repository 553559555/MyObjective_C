//
//  WZNetworkingTool.h
//  MyObjective_C
//
//  Created by neoby on 2018/2/7.
//  Copyright © 2018年 arther. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

@interface WZNetworkingTool : AFHTTPSessionManager

+ (instancetype)sharedNetWorkingTool;

- (void)GETRequestURLStrig:(NSString *)urlString andParameters:(NSDictionary *)parameters andSucces:(void(^)(id response))succes andFail:(void(^)(NSError *err))fail;

- (void)POSTRequestURLString:(NSString *)urlString andParameters:(NSDictionary *)parameters andSucces:(void(^)(id response))succes andFail:(void(^)(NSError *err))fail;

@end
