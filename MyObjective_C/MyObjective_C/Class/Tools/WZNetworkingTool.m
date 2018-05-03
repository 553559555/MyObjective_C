//
//  WZNetworkingTool.m
//  MyObjective_C
//
//  Created by neoby on 2018/2/7.
//  Copyright © 2018年 arther. All rights reserved.
//

#import "WZNetworkingTool.h"
#import "WZCommon.h"
#import <MBProgressHUD.h>

@implementation WZNetworkingTool

static WZNetworkingTool *_instance;

+ (instancetype)sharedNetWorkingTool {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] initWithBaseURL:[NSURL URLWithString:serverURL]];
        _instance.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/html",@"text/json",@"text/javascript",@"text/plain", nil];
    });
    return _instance;
}

#pragma mark - GET请求
- (void)GETRequestURLStrig:(NSString *)urlString withParameters:(NSDictionary *)parameters Succes:(void(^)(id response))succes Fail:(void(^)(NSError *err))fail {
    [self GET:urlString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        succes(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        fail(error);
    }];
}

#pragma mark - POST请求
- (void)POSTRequestURLString:(NSString *)urlString withParameters:(NSDictionary *)parameters Succes:(void(^)(id response))succes Fail:(void(^)(NSError *err))fail {
    [self POST:urlString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        succes(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        fail(error);
    }];
}

#pragma mark - GET请求 加载弹窗
- (void)GETRequestURLStrig:(NSString *)urlString withParameters:(NSDictionary *)parameters loaddingView:(UIView *)currenView Succes:(void(^)(id response))succes Fail:(void(^)(NSError *err))fail {
    [MBProgressHUD showHUDAddedTo:currenView animated:YES];
    [self GET:urlString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        succes(responseObject);
        [MBProgressHUD hideHUDForView:currenView animated:YES];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        fail(error);
        [MBProgressHUD hideHUDForView:currenView animated:YES];
    }];
}

#pragma mark - POST请求 加载弹窗
- (void)POSTRequestURLString:(NSString *)urlString withParameters:(NSDictionary *)parameters loaddingView:(UIView *)currenView Succes:(void(^)(id response))succes Fail:(void(^)(NSError *err))fail {
    [self POST:urlString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        succes(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        fail(error);
    }];
}

@end
