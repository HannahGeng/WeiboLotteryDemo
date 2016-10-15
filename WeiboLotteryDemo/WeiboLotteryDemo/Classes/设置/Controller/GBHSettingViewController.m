//
//  GBHSettingViewController.m
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/15.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import "GBHSettingViewController.h"
#import "MBProgressHUD+XMG.h"

@interface GBHSettingViewController ()

@property (nonatomic,strong)NSMutableArray * groups;

@end

@implementation GBHSettingViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"设置";
    
    //添加第一组
    [self setUpGroup0];
    
    [self setUpGroup1];
    
    [self setUpGroup2];
}

- (void)setUpGroup0
{
    GBHArrowSettingItem * redeemCode = [GBHArrowSettingItem itemWithImage:[UIImage imageNamed:@"RedeemCode"] title:@"使用兑换码"];
    
    GBHSettingGroup * group = [GBHSettingGroup groupWithItems:@[redeemCode]];
    
    group.headTitle = @"guwge";
    
    [self.groups addObject:group];
}

- (void)setUpGroup1
{
    GBHArrowSettingItem * redeemCode = [GBHArrowSettingItem itemWithImage:[UIImage imageNamed:@"RedeemCode"] title:@"推送和提醒"];
    redeemCode.destVc = [GBHPushViewController class];
    
    GBHSwitchSettingItem *item = [GBHSwitchSettingItem itemWithImage:[UIImage imageNamed:@"RedeemCode"] title:@"使用兑换码"];
    GBHSwitchSettingItem *item1 = [GBHSwitchSettingItem itemWithImage:[UIImage imageNamed:@"RedeemCode"] title:@"使用兑换码"];
    GBHSwitchSettingItem *item2 = [GBHSwitchSettingItem itemWithImage:[UIImage imageNamed:@"RedeemCode"] title:@"使用兑换码"];
    
    //当前组有多少行
    GBHSettingGroup * group = [GBHSettingGroup groupWithItems:@[redeemCode,item,item1,item2]];
    
    [self.groups addObject:group];

}

- (void)setUpGroup2
{
    GBHArrowSettingItem * version = [GBHArrowSettingItem itemWithImage:[UIImage imageNamed:@"RedeemCode"] title:@"检查有没有最新的版本"];
    
    version.itemOperation = ^(NSIndexPath * indexPath){
      
        GBHBlurView * blurView = [[GBHBlurView alloc] initWithFrame:GBHScreenBounds];
        
        [GBHKeyWindow addSubview:blurView];
        
         [MBProgressHUD showSuccess:@"当前木有最新的版本"];
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [blurView removeFromSuperview];
        });
    };
    
    GBHArrowSettingItem * item = [GBHArrowSettingItem itemWithImage:[UIImage imageNamed:@"RedeemCode"] title:@"使用兑换码"];

    GBHArrowSettingItem * item1 = [GBHArrowSettingItem itemWithImage:[UIImage imageNamed:@"RedeemCode"] title:@"使用兑换码"];

    GBHArrowSettingItem * item2 = [GBHArrowSettingItem itemWithImage:[UIImage imageNamed:@"RedeemCode"] title:@"使用兑换码"];

    GBHSettingGroup * group = [GBHSettingGroup groupWithItems:@[version,item,item1,item2]];
    
    [self.groups addObject:group];

}

@end
