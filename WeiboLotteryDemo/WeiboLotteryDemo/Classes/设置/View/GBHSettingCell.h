//
//  GBHSettingCell.h
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/15.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GBHSettingItem;

@interface GBHSettingCell : UITableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView;

/** item */
@property (nonatomic,strong)GBHSettingItem * item;

@end
