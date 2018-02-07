//
//  WZBaseTableView.m
//  MyObjective_C
//
//  Created by neoby on 2018/2/7.
//  Copyright © 2018年 arther. All rights reserved.
//

#import "WZBaseTableView.h"
#import "WZCommon.h"

@implementation WZBaseTableView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        if (@available(iOS 11.0, *)) {
            self.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
            self.contentInset = UIEdgeInsetsMake(kNavigationBarHeight, 0, 0, 0);
            self.scrollIndicatorInsets = self.contentInset;
        }
    }
    return self;
}

@end
