//
//  GBHActiveMenu.h
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/9.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GBHActiveMenu;

@protocol GBHActiveDelegate <NSObject>

@optional

- (void)activeMenuDidClickCloseBtn:(GBHActiveMenu *)menu;

@end

@interface GBHActiveMenu : UIView

@property (nonatomic,weak)id <GBHActiveDelegate>delegate;

// 如果一个控制器从xib加载，控件的尺寸默认跟xib一样大
+ (instancetype)activeMenu;

+ (instancetype)showInPoint:(CGPoint)point;

+ (void)hideInPoint:(CGPoint)point completion:(void(^)())completion;

@end
