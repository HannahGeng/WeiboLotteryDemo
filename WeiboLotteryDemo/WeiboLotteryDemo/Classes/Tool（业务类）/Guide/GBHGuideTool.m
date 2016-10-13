//
//  GBHGuideTool.m
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/13.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import "GBHGuideTool.h"

@implementation GBHGuideTool

+ (UIViewController *)chooseRootViewController
{
    // 判断下有没有最新的版本号
    // 获取用户最新的版本号，info.plist
    NSString *curVersion = [NSBundle mainBundle].infoDictionary[@"CFBundleShortVersionString"];
    
    // 获取上一次的版本号 =》 先保存版本号 =》 偏好设置保存 =》每次进入新特性界面的时候表示有最新的版本号，这时候才需要保证
    
    // 获取上一次版本号
    NSString *oldVersion = [GBHSaveTool objectForKey:GBHVersionKey];
    
    UIViewController *rootVc = nil;
    
    if ([curVersion isEqualToString:oldVersion]) {
        // 没有最新的版本号,进入核心界面
        // 创建窗口跟控制器
        // UITabBarController控制器的view不是懒加载，在创建控制器的时候就会加载。
        rootVc = [[GBHTabBarController alloc] init];
        
    }else{ // 有最新的版本号，进入新特性界面,保存当前的最新版本号
        
        
        // CollectionViewVC必须在初始化的时候设置布局参数
        rootVc = [[GBHNewFeatureViewController alloc] init];
        
        [GBHSaveTool setObject:curVersion forKey:GBHVersionKey];
    }
    
    return rootVc;

}

@end
