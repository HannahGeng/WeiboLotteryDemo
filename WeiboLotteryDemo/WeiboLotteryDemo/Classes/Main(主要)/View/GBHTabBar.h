//
//  GBHTabBar.h
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/9.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GBHTabBar;

@protocol GBHTabBarDelegate <NSObject>

@optional

- (void)tabBar:(GBHTabBar *)tabBar didClickBtn:(NSInteger)index;

@end

@interface GBHTabBar : UIView

/** items */
@property (nonatomic,strong)NSArray * items;

@property (nonatomic,weak) id <GBHTabBarDelegate> delegate;

@end
