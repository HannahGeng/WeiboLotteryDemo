//
//  GBHAwardViewController.m
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/15.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import "GBHAwardViewController.h"

@interface GBHAwardViewController ()

@end

@implementation GBHAwardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addGroup0];
}

- (void)addGroup0
{
    
    GBHSwitchSettingItem *item = [GBHSwitchSettingItem itemWithImage:nil title:@"双色球"];
    item.subTitle = @"每周二、四、日开奖";
    GBHSwitchSettingItem *item1 = [GBHSwitchSettingItem itemWithImage:nil title:@"大乐透"];
    item1.subTitle = @"每周一、三、六开奖";
    GBHSwitchSettingItem *item2 = [GBHSwitchSettingItem itemWithImage:nil title:@"3D"];
    item2.subTitle = @"每天开奖、包括试机号提醒";
    GBHSwitchSettingItem *item3 = [GBHSwitchSettingItem itemWithImage:nil title:@"七乐彩"];
    item3.subTitle = @"每周一、三、五开奖";
    GBHSwitchSettingItem *item4 = [GBHSwitchSettingItem itemWithImage:nil title:@"七星彩"];
    item4.subTitle = @"每周二、五、日开奖";
    GBHSwitchSettingItem *item5 = [GBHSwitchSettingItem itemWithImage:nil title:@"排列3"];
    item5.subTitle = @"每天开奖";
    GBHSwitchSettingItem *item6 = [GBHSwitchSettingItem itemWithImage:nil title:@"排列5"];
    item6.subTitle = @"每天开奖";
    
    GBHSettingGroup *group = [[GBHSettingGroup alloc] init];
    group.items = @[item,item1,item2,item3,item4,item5,item6];
    
    [self.groups addObject:group];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 创建cell
    GBHSettingCell *cell = [GBHSettingCell cellWithTableView:tableView style:UITableViewCellStyleSubtitle];
    
    // 取出哪一组
    GBHSettingGroup *group = self.groups[indexPath.section];
    
    // 取出哪一行
    GBHSettingItem *item = group.items[indexPath.row];
    
    // 给cell传递模型
    cell.item = item;
    
    return cell;
    
}

@end
