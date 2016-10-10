//
//  GBHHallViewController.m
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/9.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import "GBHHallViewController.h"

@interface GBHHallViewController ()<GBHActiveDelegate>

@property (nonatomic,assign) BOOL isPopMenu;

@property (nonatomic,strong)GBHDownMenu * downMenu;

@end

@implementation GBHHallViewController

- (GBHDownMenu *)downMenu
{
    if (_downMenu == nil) {
        
        GBHMenuItem *item = [GBHMenuItem itemWithImage:[UIImage imageNamed:@"Development"] title:nil];
        GBHMenuItem *item1 = [GBHMenuItem itemWithImage:[UIImage imageNamed:@"Development"] title:nil];
        GBHMenuItem *item2 = [GBHMenuItem itemWithImage:[UIImage imageNamed:@"Development"] title:nil];
        GBHMenuItem *item3 = [GBHMenuItem itemWithImage:[UIImage imageNamed:@"Development"] title:nil];
        GBHMenuItem *item4 = [GBHMenuItem itemWithImage:[UIImage imageNamed:@"Development"] title:nil];
        GBHMenuItem *item5 = [GBHMenuItem itemWithImage:[UIImage imageNamed:@"Development"] title:nil];
        
        NSArray *items = @[item,item1,item2,item3,item4,item5];
        
        // 弹出黑色菜单
        _downMenu = [GBHDownMenu showInView:self.view items:items oriY:0];
        
    }
    
    return _downMenu;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"购彩大厅";
    
    // 左边按钮
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"CS50_activity_image"] style:UIBarButtonItemStylePlain target:self action:@selector(active)];
    
    // 添加右边按钮
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"Development"] style:UIBarButtonItemStylePlain target:self action:@selector(popMenu)];
}

- (void)active
{
    [GBHCover show];
    
    //弹出菜单
    GBHActiveMenu * menu = [GBHActiveMenu showInPoint:self.view.center];
    
    menu.delegate = self;
}

- (void)activeMenuDidClickCloseBtn:(GBHActiveMenu *)menu
{
    void(^completion)() = ^{
      
        [GBHCover hide];
    };
    
    [GBHActiveMenu hideInPoint:CGPointMake(44, 44) completion:completion];
}

#pragma mark - 下拉菜单
- (void)popMenu
{
    if (_isPopMenu == NO) {
        
        [self downMenu];
    }else
    {
        [self.downMenu hide];
    }
    
    _isPopMenu = !_isPopMenu;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

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
