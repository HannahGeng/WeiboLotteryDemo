//
//  GBHScoreViewController.m
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/15.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import "GBHScoreViewController.h"

@interface GBHScoreViewController ()

@end

@implementation GBHScoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self addGroup0];
    
    [self addGroup1];
    
    [self addGroup1];
    [self addGroup1];
    [self addGroup1];
    [self addGroup1];

}

- (void)addGroup0
{
    GBHSettingItem *item = [GBHSettingItem itemWithImage:nil title:@"推送我关注的比赛"];
    
    
    GBHSettingGroup *group = [GBHSettingGroup groupWithItems:@[item]];
    group.footTitle = @"开启后，当我投注或关注的比赛开始、进球和结束时，会自动发送推送消息提醒我";
    [self.groups addObject:group];
    
}

- (void)dealloc
{
    NSLog(@"%s",__func__);
}

- (void)addGroup1
{
    GBHSettingItem *item = [GBHSettingItem itemWithImage:nil title:@"起始时间"];
    item.subTitle = @"00:00";
    
    // block会把代码里所有强指针全部强引用
    // 解决循环利用的问题
    
    //    __weak XMGScoreViewController *weakSelf = self;
    
    // typeof获取括号里面的类型
    __weak typeof(self) weakSelf = self;
    
    // 在iOS7之后只要在cell上添加textField都自动做了键盘处理
    item.itemOperation = ^(NSIndexPath *indexPath)
    {
        
        // 获取当前选中的cell
        UITableViewCell *cell = [weakSelf.tableView cellForRowAtIndexPath:indexPath];
        
        // 弹出键盘
        UITextField *textField = [[UITextField alloc] init];
        
        [textField becomeFirstResponder];
        
        [cell addSubview:textField];
        
    };
    // self -> XMGScoreViewController
    
    GBHSettingGroup *group = [GBHSettingGroup groupWithItems:@[item]];
    group.headTitle = @"只在以下时间段接收比分直播推送";
    [self.groups addObject:group];
    
}

@end
