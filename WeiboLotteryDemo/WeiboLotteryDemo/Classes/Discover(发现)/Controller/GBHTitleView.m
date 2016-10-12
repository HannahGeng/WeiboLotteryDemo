//
//  GBHTitleView.m
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/10.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import "GBHTitleView.h"

@implementation GBHTitleView

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    if (self.imageView.x < self.titleLabel.x) {
        
        self.titleLabel.x = self.imageView.x;
        
        self.imageView.x = CGRectGetMaxX(self.titleLabel.frame);

    }
}

- (void)setTitle:(NSString *)title forState:(UIControlState)state
{
    [super setTitle:title forState:state];
    [self sizeToFit];
}

- (void)setImage:(UIImage *)image forState:(UIControlState)state
{
    [super setImage:image forState:state];
    [self sizeToFit];
}

@end
