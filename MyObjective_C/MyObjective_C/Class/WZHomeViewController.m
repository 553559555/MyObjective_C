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
#import "UIColor+Hex.h"
#import "UIBarButtonItem+BackNavigtionItemButton.h"
#import "WZNetworkingTool.h"


#define imageWidth 200
#define imageHeight 103
#define statusBarHeight 20

@interface WZHomeViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UIImageView *backgroundImageView;

@end

@implementation WZHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height;
    CGFloat screenHWScale = screenHeight / screenWidth;
    CGFloat startImageWidth = screenWidth * screenHWScale;
    CGFloat endImageHeight = screenWidth / imageWidth * imageHeight;
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, screenHeight - endImageHeight - statusBarHeight, screenWidth, screenHeight)];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.rowHeight = 44;
    UIImageView *tableViewHeaderView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, screenWidth, endImageHeight)];
    tableViewHeaderView.image = [UIImage imageNamed:@"test1"];
    tableView.tableHeaderView = tableViewHeaderView;
    [self.view addSubview:tableView];
    
    _backgroundImageView = [[UIImageView alloc] initWithFrame:CGRectMake(-(startImageWidth - screenWidth) / 2, 0, startImageWidth, screenHeight)];
    _backgroundImageView.image = [UIImage imageNamed:@"test1"];
    [self.view addSubview:_backgroundImageView];
    
    [UIView animateWithDuration:2 animations:^{
        _backgroundImageView.frame = CGRectMake(0, 0, screenWidth, endImageHeight);
        tableView.frame = CGRectMake(0, -statusBarHeight, screenWidth, screenHeight);
    } completion:^(BOOL finished) {
        _backgroundImageView.alpha = 0;
    }];
    
    [[WZNetworkingTool sharedNetWorkingTool] GETRequestURLStrig:@"www.baidu.com" withParameters:nil Succes:^(id response) {
        NSLog(@"%@", response);
    } Fail:^(NSError *err) {
        NSLog(@"%@", err);
    }];
    
    [[WZNetworkingTool sharedNetWorkingTool] GETRequestURLStrig:@"www.baidu.com" withParameters:nil loaddingView:self.view Succes:^(id response) {
        NSLog(@"%@", response);
    } Fail:^(NSError *err) {
        NSLog(@"%@", err);
    }];
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
    cell.backgroundColor = [UIColor redColor];
    return cell;
}

@end
