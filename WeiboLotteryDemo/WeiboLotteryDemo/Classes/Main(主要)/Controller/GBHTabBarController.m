//
//  GBHTabBarController.m
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/9.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import "GBHTabBarController.h"

@interface GBHTabBarController ()<GBHTabBarDelegate>

@property (nonatomic,strong)NSMutableArray * items;

@end

@implementation GBHTabBarController

- (NSMutableArray *)items
{
    if (_items == nil) {
        
        _items = [NSMutableArray array];
    }
    
    return _items;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //添加子控制器
    [self setUpAllChildViewController];
    
    //自定义tabBar
    [self setUpTabBar];
}

- (void)setUpAllChildViewController
{
    // 购彩大厅
    GBHHallViewController *hall = [[GBHHallViewController alloc] init];
    
    [self setUpOneChildViewController:hall image:[UIImage imageNamed:@"TabBar_LotteryHall_new"] selImage:[UIImage imageNamed:@"TabBar_LotteryHall_selected_new"] title:@"购彩大厅"];
    
    // 竞技场
    GBHArenaViewController *arena = [[GBHArenaViewController alloc] init];
    
    [self setUpOneChildViewController:arena image:[UIImage imageNamed:@"TabBar_Arena_new"] selImage:[UIImage imageNamed:@"TabBar_Arena_selected_new"] title:nil];
    
    // 发现
    GBHDiscoverViewController *discover = [[GBHDiscoverViewController alloc] init];
    [self setUpOneChildViewController:discover image:[UIImage imageNamed:@"TabBar_Discovery_new"] selImage:[UIImage imageNamed:@"TabBar_Discovery_selected_new"] title:@"发现"];
    
    // 开奖信息
    GBHHistoryViewController *history = [[GBHHistoryViewController alloc] init];
    [self setUpOneChildViewController:history image:[UIImage imageNamed:@"TabBar_History_new"] selImage:[UIImage imageNamed:@"TabBar_History_selected_new"] title:@"开奖信息"];
    
    // 我的彩票
    GBHMyLotteryViewController *myLottery = [[GBHMyLotteryViewController alloc] init];
    [self setUpOneChildViewController:myLottery image:[UIImage imageNamed:@"TabBar_MyLottery_new"] selImage:[UIImage imageNamed:@"TabBar_MyLottery_selected_new"] title:@"我的彩票"];
}

- (void)tabBar:(GBHTabBar *)tabBar didClickBtn:(NSInteger)index
{
    self.selectedIndex = index;
}

#pragma mark - 添加一个子控制器
- (void)setUpOneChildViewController:(UIViewController *)vc image:(UIImage *)image selImage:(UIImage *)selImage title:(NSString *)title
{
    vc.navigationItem.title = title;
    vc.tabBarItem.image = image;
    vc.tabBarItem.selectedImage = selImage;
    
    [self.items addObject:vc.tabBarItem];
    
    vc.view.backgroundColor = [self randomColor];
    
    UINavigationController * nav = [[GBHNavigationController alloc] initWithRootViewController:vc];
    
    if ([vc isKindOfClass:[GBHArenaNavController class]]) {
        
        nav = [[GBHArenaNavController alloc] initWithRootViewController:vc];
    }
    
    [self addChildViewController:nav];
}

- (UIColor *)randomColor
{
    CGFloat r = arc4random_uniform(256) / 255.0;
    CGFloat g = arc4random_uniform(256) / 255.0;
    CGFloat b = arc4random_uniform(256) / 255.0;
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1];
}

- (void)setUpTabBar
{
    [self.tabBar removeFromSuperview];
    
    GBHTabBar * tabBar = [[GBHTabBar alloc] init];
    
    tabBar.items = self.items;
    
    tabBar.frame = self.tabBar.frame;
    
    tabBar.delegate = self;
    
    tabBar.backgroundColor = [UIColor orangeColor];
    
    [self.view addSubview:tabBar];
}

@end
