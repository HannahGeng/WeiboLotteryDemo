//
//  GBHArenaNavController.m
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/10.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import "GBHArenaNavController.h"

@interface GBHArenaNavController ()

@end

@implementation GBHArenaNavController

+ (void)initialize
{
    UINavigationBar * bar = [UINavigationBar appearance];
    
    [bar setBackgroundImage:[UIImage imageWithStretchableImageName:@"NLArenaNavBar64"] forBarMetrics:UIBarMetricsDefault];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

@end
