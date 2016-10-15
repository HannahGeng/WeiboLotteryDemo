//
//  GBHSettingGroup.h
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/15.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GBHSettingGroup : NSObject

/** items */
@property (nonatomic,strong)NSArray * items;

/** headTitle */
@property (nonatomic,strong)NSString * headTitle;

/** footTitle */
@property (nonatomic,strong)NSString * footTitle;

+ (instancetype)groupWithItems:(NSArray *)items;

@end
