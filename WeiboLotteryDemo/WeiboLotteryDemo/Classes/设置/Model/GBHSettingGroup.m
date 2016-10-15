//
//  GBHSettingGroup.m
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/15.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import "GBHSettingGroup.h"

@implementation GBHSettingGroup

+ (instancetype)groupWithItems:(NSArray *)items
{
    GBHSettingGroup * group = [[GBHSettingGroup alloc] init];
    
    group.items = items;
    
    return group;
}

@end
