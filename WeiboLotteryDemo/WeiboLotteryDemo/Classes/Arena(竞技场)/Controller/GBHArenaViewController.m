//
//  GBHArenaViewController.m
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/9.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import "GBHArenaViewController.h"

@interface GBHArenaViewController ()

@end

@implementation GBHArenaViewController

//重写，自定义控制器View
- (void)loadView
{
    UIImageView * imageView = [[UIImageView alloc] initWithFrame:GBHScreenBounds];
    
    imageView.userInteractionEnabled = YES;
    
    imageView.image = [UIImage imageNamed:@"NLArenaBackground"];
    
    self.view = imageView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UISegmentedControl * seg = [[UISegmentedControl alloc] initWithItems:@[@"足球",@"篮球"]];
    
    seg.width += 40;
    
    //设置seg的背景图片
    [seg setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentBG"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    
    [seg setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentSelectedBG"] forState:UIControlStateSelected barMetrics:UIBarMetricsDefault];
    
    seg.selectedSegmentIndex = 0;
    
    //设置边框颜色
    seg.tintColor = GBHColor(0, 142, 143);
    
    NSMutableDictionary * dict = [NSMutableDictionary dictionary];
    
    dict[NSForegroundColorAttributeName] = [UIColor whiteColor];
    
    [seg setTitleTextAttributes:dict forState:UIControlStateSelected];
    
    self.navigationItem.titleView = seg;
}

@end
