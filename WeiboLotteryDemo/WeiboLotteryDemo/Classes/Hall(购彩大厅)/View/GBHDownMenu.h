//
//  GBHDownMenu.h
//  WeiboLotteryDemo
//
//  Created by zdzx-008 on 16/10/10.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GBHDownMenu : UIView

+ (instancetype)showInView:(UIView *)superView items:(NSArray *)items oriY:(CGFloat)oriY;

- (void)hide;

@end
