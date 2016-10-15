//
//  GBHSettingViewController.m
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/15.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import "GBHSettingViewController.h"

@interface GBHSettingViewController ()

@property (nonatomic,strong)NSMutableArray * groups;

@end

@implementation GBHSettingViewController

- (NSMutableArray *)groups
{
    if (_groups == nil) {
        
        _groups = [NSMutableArray array];
    }
    
    return _groups;
}

- (instancetype)init
{
    return [super initWithStyle:UITableViewStyleGrouped];
}

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
    GBHArrowSettingItem * redeemCode = [GBHArrowSettingItem itemWithImage:[UIImage imageNamed:@"RedeemCode"] title:@"使用兑换码"];
    GBHSwitchSettingItem *item = [GBHSwitchSettingItem itemWithImage:[UIImage imageNamed:@"RedeemCode"] title:@"使用兑换码"];
    GBHSwitchSettingItem *item1 = [GBHSwitchSettingItem itemWithImage:[UIImage imageNamed:@"RedeemCode"] title:@"使用兑换码"];
    GBHSwitchSettingItem *item2 = [GBHSwitchSettingItem itemWithImage:[UIImage imageNamed:@"RedeemCode"] title:@"使用兑换码"];
    
    //当前组有多少行
    GBHSettingGroup * group = [GBHSettingGroup groupWithItems:@[redeemCode,item,item1,item2]];
    
    [self.groups addObject:group];

}

- (void)setUpGroup2
{
    GBHArrowSettingItem * item = [GBHArrowSettingItem itemWithImage:[UIImage imageNamed:@"RedeemCode"] title:@"使用兑换码"];

    GBHArrowSettingItem * item1 = [GBHArrowSettingItem itemWithImage:[UIImage imageNamed:@"RedeemCode"] title:@"使用兑换码"];

    GBHArrowSettingItem * item2 = [GBHArrowSettingItem itemWithImage:[UIImage imageNamed:@"RedeemCode"] title:@"使用兑换码"];

    GBHSettingGroup * group = [GBHSettingGroup groupWithItems:@[item,item1,item2]];
    
    [self.groups addObject:group];

}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return self.groups.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    GBHSettingGroup * group = self.groups[section];
    
    return group.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    GBHSettingGroup * group = self.groups[indexPath.section];
    
    GBHSettingItem * item = group.items[indexPath.row];
    
    //创建cell
    GBHSettingCell * cell = [GBHSettingCell cellWithTableView:tableView];
    
    cell.item = item;
  
    return cell;
}

//返回头部标题
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    GBHSettingGroup * group = self.groups[section];
    
    return group.headTitle;
}

//返回尾部标题
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    GBHSettingGroup * group = self.groups[section];
    
    return group.footTitle;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
