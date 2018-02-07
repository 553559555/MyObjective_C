//
//  UIBarButtonItem+BackNavigtionItemButton.m
//  MyObjective_C
//
//  Created by neoby on 2018/2/7.
//  Copyright © 2018年 arther. All rights reserved.
//

#import "UIBarButtonItem+BackNavigtionItemButton.h"

@implementation UIBarButtonItem (BackNavigtionItemButton)

#pragma mark - 自定义navigationItem
+ (instancetype)backNavigtionItemButton:(NSString *)titleName image:(NSString *)imageName target:(id)target selectedFunc:(SEL)funcation {
    CGFloat navigationHeight = [UIScreen mainScreen].bounds.size.height == 812 ? 44 : 24;
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(5, navigationHeight, 40, 40)];
    if (imageName == nil) {
        [button setTitle:titleName forState:UIControlStateNormal];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    } else if (titleName == nil) {
        [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    }
    [button addTarget:target action:funcation forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}

@end
