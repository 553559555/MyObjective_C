//
//  WZProgressHUD.h
//  MyObjective_C
//
//  Created by neoby on 2018/2/7.
//  Copyright © 2018年 arther. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WZProgressHUD : NSObject

+ (instancetype)sharedProgressHUD;
// 正在加载HUD
- (void)showLoaddingHUD;
// 隐藏HUD
- (void)dimssHUD;
// 显示文字HUD
- (void)showText:(NSString *)text;

@end
