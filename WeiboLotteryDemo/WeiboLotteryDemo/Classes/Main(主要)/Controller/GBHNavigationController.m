//
//  GBHNavigationController.m
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/9.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import "GBHNavigationController.h"

@interface GBHNavigationController ()

@end

@implementation GBHNavigationController

+ (void)initialize
{
    UINavigationBar * bar = [UINavigationBar appearanceWhenContainedIn:self, nil];
    
    [bar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
    
    //设置导航条标题颜色
    NSMutableDictionary * titleArr = [NSMutableDictionary dictionary];
    
    titleArr[NSForegroundColorAttributeName] = [UIColor whiteColor];
    titleArr[NSFontAttributeName] = [UIFont systemFontOfSize:20];
    [bar setTitleTextAttributes:titleArr];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

@end
