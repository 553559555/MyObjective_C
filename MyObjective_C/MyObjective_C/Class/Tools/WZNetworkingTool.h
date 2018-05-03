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

- (void)GETRequestURLStrig:(NSString *)urlString withParameters:(NSDictionary *)parameters Succes:(void(^)(id response))succes Fail:(void(^)(NSError *err))fail;

- (void)POSTRequestURLString:(NSString *)urlString withParameters:(NSDictionary *)parameters Succes:(void(^)(id response))succes Fail:(void(^)(NSError *err))fail;

- (void)GETRequestURLStrig:(NSString *)urlString withParameters:(NSDictionary *)parameters loaddingView:(UIView *)currenView Succes:(void(^)(id response))succes Fail:(void(^)(NSError *err))fail;

- (void)POSTRequestURLString:(NSString *)urlString withParameters:(NSDictionary *)parameters loaddingView:(UIView *)currenView Succes:(void(^)(id response))succes Fail:(void(^)(NSError *err))fail;

@end
