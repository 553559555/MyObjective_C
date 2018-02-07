//
//  WZHomeViewController.m
//  MyObjective_C
//
//  Created by neoby on 2018/2/7.
//  Copyright © 2018年 arther. All rights reserved.
//

#import "WZHomeViewController.h"
#import "WZCommon.h"

@interface WZHomeViewController ()

@end

@implementation WZHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"screenWidth = %f---screenHeight = %f----navBarHeight = %f---tabBarHeight = %f---widthRatio = %f---heightRatio = %f", kScreenHeight, kScreenWidth, kNavigationBarHeight, kTabBarHeight, kWidthRatio, kHeightRatio);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
