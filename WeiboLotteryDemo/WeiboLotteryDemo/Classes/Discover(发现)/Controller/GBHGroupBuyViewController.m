//
//  GBHGroupBuyViewController.m
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/10.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import "GBHGroupBuyViewController.h"

@interface GBHGroupBuyViewController ()

@property (nonatomic,strong)UIButton * titleView;

@end

@implementation GBHGroupBuyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton * titleView = [GBHTitleView buttonWithType:UIButtonTypeCustom];
    
    _titleView = titleView;
    
    [titleView setTitle:@"全部彩种" forState:UIControlStateNormal];
    
    [titleView setImage:[UIImage imageNamed:@"YellowDownArrow"] forState:UIControlStateNormal];
    
    [titleView sizeToFit];
    
    self.navigationItem.titleView = titleView;
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"助手" style:UIBarButtonItemStyleBordered target:self action:@selector(help)];
}

- (void)help
{
    [_titleView setImage:nil forState:UIControlStateNormal];
}

@end
