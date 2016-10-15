//
//  GBHSettingCell.m
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/15.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import "GBHSettingCell.h"

@interface GBHSettingCell()

@property (nonatomic,strong)UIImageView * arrowView;

@property (nonatomic,strong)UISwitch * switchView;

@end

@implementation GBHSettingCell

- (UIImageView *)arrowView
{
    if (_arrowView == nil) {
        
        _arrowView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"arrow_right"]];
    }
    
    return _arrowView;
}

- (UISwitch *)switchView
{
    if (_switchView == nil) {
        
        _switchView = [[UISwitch alloc] init];
    }
    
    return _switchView;
}

+ (instancetype)cellWithTableView:(UITableView *)tableView style:(UITableViewCellStyle)style
{
    static NSString * ID = @"cell";
    
    GBHSettingCell * cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (cell == nil) {
        
        cell = [[GBHSettingCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID];
    }
    
    return cell;
}

- (void)setItem:(GBHSettingItem *)item
{
    _item = item;
    
    //设置控件上的内容
    [self setUpData];
    
    //设置辅助视图
    [self setUpAccessoryView];
}

- (void)setUpData
{
    self.textLabel.text = _item.title;
    self.detailTextLabel.text = _item.subTitle;
    self.imageView.image = _item.image;
}

- (void)setUpAccessoryView
{
    if ([_item isKindOfClass:[GBHArrowSettingItem class]]) {
        //箭头
        self.accessoryView = self.arrowView;
        
    }else if ([_item isKindOfClass:[GBHSwitchSettingItem class]]){
        
        //开关
        self.accessoryView = self.switchView;
        
    }else{
        
        //还原
        self.accessoryView = nil;
    }
}

@end
