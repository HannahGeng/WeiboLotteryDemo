//
//  GBHCover.m
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/9.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import "GBHCover.h"

@implementation GBHCover

+ (void)show
{
    //创建蒙板对象
    GBHCover * cover = [[GBHCover alloc] initWithFrame:GBHScreenBounds];
    
    cover.backgroundColor = [UIColor blackColor];
    
    cover.alpha = 0.6;
    
    [GBHKeyWindow addSubview:cover];
}

+ (void)hide
{
    for (UIView * childView in GBHKeyWindow.subviews) {
        
        if ([childView isKindOfClass:self]) {
            
            [childView removeFromSuperview];
        }
    }
}

@end
