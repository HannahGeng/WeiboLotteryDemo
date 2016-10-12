//
//  GBHDiscoverViewController.m
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/9.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import "GBHDiscoverViewController.h"

@interface GBHDiscoverViewController ()

@end

@implementation GBHDiscoverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    UIViewController *vc = segue.destinationViewController;
    
    vc.hidesBottomBarWhenPushed = YES;
}

@end
