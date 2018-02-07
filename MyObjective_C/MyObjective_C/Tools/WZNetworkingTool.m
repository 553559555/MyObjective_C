//
//  WZNetworkingTool.m
//  MyObjective_C
//
//  Created by neoby on 2018/2/7.
//  Copyright © 2018年 arther. All rights reserved.
//

#import "WZNetworkingTool.h"

@implementation WZNetworkingTool

static WZNetworkingTool *_instance;

+ (instancetype)sharedNetWorkingTool {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] initWithBaseURL:[NSURL URLWithString:@"http://test.liren.com/"]];
        _instance.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/html",@"text/json",@"text/javascript",@"text/plain", nil];
    });
    return _instance;
}

#pragma mark - GET请求
- (void)GETRequestURLStrig:(NSString *)urlString andParameters:(NSDictionary *)parameters andSucces:(void(^)(id response))succes andFail:(void(^)(NSError *err))fail {
    [self GET:urlString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        succes(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        fail(error);
    }];
}

#pragma mark - POST请求
- (void)POSTRequestURLString:(NSString *)urlString andParameters:(NSDictionary *)parameters andSucces:(void(^)(id response))succes andFail:(void(^)(NSError *err))fail {
    [self POST:urlString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        succes(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        fail(error);
    }];
}

@end
