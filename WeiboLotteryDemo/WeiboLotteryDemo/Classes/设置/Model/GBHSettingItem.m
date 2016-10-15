//
//  GBHSettingItem.m
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/15.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import "GBHSettingItem.h"

@implementation GBHSettingItem

+ (instancetype)itemWithImage:(UIImage *)image title:(NSString *)title
{
    GBHSettingItem * item = [[self alloc] init];
    
    item.image = image;
    item.title = title;
    
    return item;
}

@end
