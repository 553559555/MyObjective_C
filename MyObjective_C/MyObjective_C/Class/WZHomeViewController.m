//
//  WZHomeViewController.m
//  MyObjective_C
//
//  Created by neoby on 2018/2/7.
//  Copyright © 2018年 arther. All rights reserved.
//

#import "WZHomeViewController.h"
#import "WZCommon.h"
#import "WZProgressHUD.h"

@interface WZHomeViewController ()

@end

@implementation WZHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = kDefaultColor;
    
    NSLog(@"screenWidth = %f---screenHeight = %f----navBarHeight = %f---tabBarHeight = %f---widthRatio = %f---heightRatio = %f", kScreenHeight, kScreenWidth, kNavigationBarHeight, kTabBarHeight, kWidthRatio, kHeightRatio);
 
    [[WZProgressHUD sharedProgressHUD] showText:@"网络请求失败"];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [[WZProgressHUD sharedProgressHUD] showLoaddingHUD];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [[WZProgressHUD sharedProgressHUD] dimssHUD];
    });
    
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
