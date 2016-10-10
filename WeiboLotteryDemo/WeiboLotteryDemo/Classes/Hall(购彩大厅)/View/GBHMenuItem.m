//
//  GBHMenuItem.m
//  WeiboLotteryDemo
//
//  Created by zdzx-008 on 16/10/10.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import "GBHMenuItem.h"

@implementation GBHMenuItem

+ (instancetype)itemWithImage:(UIImage *)image title:(NSString *)title
{
    GBHMenuItem *item = [[self alloc] init];
    
    item.image = image;
    item.title = title;
    
    return item;
}

@end
