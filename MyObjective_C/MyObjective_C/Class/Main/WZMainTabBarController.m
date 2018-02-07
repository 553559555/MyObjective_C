//
//  WZMainTabBarController.m
//  MyProject
//
//  Created by neoby on 2018/1/22.
//  Copyright © 2018年 arther. All rights reserved.
//

#import "WZMainTabBarController.h"
#import "WZMainNavigationController.h"
#import "WZHomeViewController.h"

@interface WZMainTabBarController ()

@end

@implementation WZMainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 设置选中字体颜色
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor orangeColor]} forState:UIControlStateSelected];
    //添加子控制器
    [self addChildViewControllers];
}


- (void)addChildViewControllers {
    
    [self settingChildVC:[[WZMainNavigationController alloc] initWithRootViewController:[WZHomeViewController new]] title:@"首页" imageName:@"TabBar_Home_nor" selectedImageName:@"TabBar_Home_sel"];
    
    [self settingChildVC:[[WZMainNavigationController alloc] initWithRootViewController:[UIViewController new]] title:@"分类" imageName:@"TabBar_Sort_nor" selectedImageName:@"TabBar_Sort_sel"];
    
    [self settingChildVC:[[WZMainNavigationController alloc] initWithRootViewController:[UIViewController new]] title:@"我的" imageName:@"TabBar_Me_nor" selectedImageName:@"TabBar_Me_sel"];
    
}

#pragma mark - 封装创建子控制器方法
- (void)settingChildVC:(UIViewController *)VC title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName {
    
    UIImage *image = [UIImage imageNamed:imageName];
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UIImage *selectImage = [UIImage imageNamed:selectedImageName];
    selectImage = [selectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    VC.title                    = title;
    VC.tabBarItem.image         = image;
    VC.tabBarItem.selectedImage = selectImage;
    [self addChildViewController:VC];
    
}

@end
