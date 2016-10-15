//
//  GBHSettingItem.h
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/15.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GBHSettingItem : NSObject

@property (nonatomic, strong) UIImage *image;

@property (nonatomic, strong) NSString *title;

@property (nonatomic, strong) NSString *subTitle;

//用来保存每一行cell的功能
@property (nonatomic,strong) void(^itemOperation)();

+ (instancetype)itemWithImage:(UIImage *)image title:(NSString *)title;

@end
