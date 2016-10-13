//
//  GBHSaveTool.m
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/13.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import "GBHSaveTool.h"

@implementation GBHSaveTool

+ (id)objectForKey:(NSString *)defaultName{
    return  [[NSUserDefaults standardUserDefaults] objectForKey:defaultName];
}

+ (void)setObject:(id)value forKey:(NSString *)defaultName
{
    [[NSUserDefaults standardUserDefaults] setObject:defaultName forKey:defaultName];
}

@end
