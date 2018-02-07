//
//  WZProgressHUD.m
//  MyObjective_C
//
//  Created by neoby on 2018/2/7.
//  Copyright © 2018年 arther. All rights reserved.
//

#import "WZProgressHUD.h"
#import <MBProgressHUD.h>

@interface WZProgressHUD()

@property (nonatomic, strong) MBProgressHUD * HUD;

@end

@implementation WZProgressHUD

static WZProgressHUD *_instance;

+ (instancetype)sharedProgressHUD {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}

#pragma mark - 正在加载HUD
- (void)showLoaddingHUD {
    
    _HUD                 = [[MBProgressHUD alloc] initWithView:[UIApplication sharedApplication].keyWindow];
    _HUD.label.text      = @"加载中...";
    _HUD.bezelView.color = [UIColor blackColor];
    _HUD.bezelView.alpha = 0.5;
    _HUD.contentColor    = [UIColor whiteColor];
    [[UIApplication sharedApplication].keyWindow addSubview:_HUD];
    [_HUD showAnimated:YES];

}

#pragma mark - 隐藏HUD
- (void)dimssHUD {
    [_HUD removeFromSuperview];
    _HUD = nil;
}

#pragma mark - 显示文字HUD
- (void)showText:(NSString *)text {
    
    _HUD                 = [[MBProgressHUD alloc] initWithView:[UIApplication sharedApplication].keyWindow];
    _HUD.label.text      = text;
    _HUD.offset          = CGPointMake(0, 0);
    _HUD.mode            = MBProgressHUDModeText;
    _HUD.bezelView.color = [UIColor blackColor];
    _HUD.bezelView.alpha = 0.5;
    _HUD.contentColor    = [UIColor whiteColor];
    [[UIApplication sharedApplication].keyWindow addSubview:_HUD];
    [_HUD showAnimated:YES];
    [_HUD hideAnimated:YES afterDelay:3];
    
}

@end

