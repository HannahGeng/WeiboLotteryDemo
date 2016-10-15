//
//  GBHNavigationController.m
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/9.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import "GBHNavigationController.h"

#import <objc/runtime.h>

@interface GBHNavigationController ()<UIGestureRecognizerDelegate>

@property (nonatomic,strong) id popDeegate;

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
    
    //防止手势冲突
    self.interactivePopGestureRecognizer.enabled = NO;
    
    NSArray * targets = [self.interactivePopGestureRecognizer valueForKey:@"_targets"];
    
    id objc = [targets firstObject];
    
    id target = [objc valueForKey:@"_target"];
    
    UIPanGestureRecognizer * pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handleNavigatioTransition:)];
    
    pan.delegate = self;
    
    [self.view addGestureRecognizer:pan];
}

#pragma mark - 手势代理方法
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    // 判断下当前控制器是否是跟控制器
    
    return (self.topViewController != [self.viewControllers firstObject]);
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.viewControllers.count != 0) { // 非跟控制器hi
        viewController.hidesBottomBarWhenPushed = YES;
        
        // 设置导航条左边按钮的内容,把系统的返回按钮给覆盖,导航控制器的滑动返回功能就木有啦
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"NavBack"] style:UIBarButtonItemStyleBordered target:self action:@selector(back)];
        
    }
    
    [super pushViewController:viewController animated:animated];
}

- (void)back
{
    [self popViewControllerAnimated:YES];
}

@end
