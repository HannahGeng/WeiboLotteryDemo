//
//  GBHPushViewController.m
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/15.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import "GBHPushViewController.h"

@interface GBHPushViewController ()

@end

@implementation GBHPushViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpGroup1];
}

- (void)setUpGroup1
{
    GBHArrowSettingItem * redeemCode = [GBHArrowSettingItem itemWithImage:nil title:@"开奖推送"];
    
    redeemCode.destVc = [GBHAwardViewController class];
    
    GBHArrowSettingItem * item = [GBHArrowSettingItem itemWithImage:nil title:@"比分直播"];
    item.destVc = [GBHScoreViewController class];
    
    GBHArrowSettingItem *item1 = [GBHArrowSettingItem itemWithImage:nil title:@"使用兑换码"];
    GBHArrowSettingItem *item2 = [GBHArrowSettingItem itemWithImage:nil title:@"使用兑换码"];
    
    
    // 当前组有多少行
    GBHSettingGroup *group = [GBHSettingGroup groupWithItems:@[redeemCode,item,item1,item2]];
    
    [self.groups addObject:group];
}

@end
