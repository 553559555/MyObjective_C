//
//  WZCommon.h
//  MyObjective_C
//
//  Created by neoby on 2018/2/7.
//  Copyright © 2018年 arther. All rights reserved.
//

#ifndef WZCommon_h
#define WZCommon_h

// 屏幕宽高
#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

// 适配比例
#define kWidthRatio  kScreenWidth / 414.0
#define kHeightRatio kScreenHeight / 736.0

//默认颜色
#define kDefaultColor [UIColor whiteColor]
//随机颜色
#define kRandomColor [UIColor colorWithRed:arc4random() % 256 / 256.0 green:arc4random() % 256 / 256.0 blue:arc4random() % 256 / 256.0 alpha:1]

// iPhone X
static const CGFloat kNavigationBarHeight = 88;
static const CGFloat kTabBarHeight = 83;

#endif /* WZCommon_h */
