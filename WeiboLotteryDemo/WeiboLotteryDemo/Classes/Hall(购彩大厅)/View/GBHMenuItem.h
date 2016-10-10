//
//  GBHMenuItem.h
//  WeiboLotteryDemo
//
//  Created by zdzx-008 on 16/10/10.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface GBHMenuItem : NSObject

@property (nonatomic, strong) NSString *title;

@property (nonatomic, strong) UIImage *image;

+ (instancetype)itemWithImage:(UIImage *)image title:(NSString *)title;

@end
