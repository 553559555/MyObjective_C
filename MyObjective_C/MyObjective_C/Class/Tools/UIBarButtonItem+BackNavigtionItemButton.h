//
//  UIBarButtonItem+BackNavigtionItemButton.h
//  MyObjective_C
//
//  Created by neoby on 2018/2/7.
//  Copyright © 2018年 arther. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (BackNavigtionItemButton)

+ (instancetype)backNavigtionItemButton:(NSString *)titleName image:(NSString *)imageName target:(id)target selectedFunc:(SEL)funcation;

@end
