//
//  GBHLuckyBGView.m
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/12.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import "GBHLuckyBGView.h"

@implementation GBHLuckyBGView

- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    UIImage *image =  [UIImage imageNamed:@"luck_entry_background"];
    
    [image drawInRect:rect];
    
}

@end
