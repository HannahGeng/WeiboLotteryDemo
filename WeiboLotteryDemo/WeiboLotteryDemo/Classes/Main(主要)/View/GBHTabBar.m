//
//  GBHTabBar.m
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/9.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import "GBHTabBar.h"

@interface GBHTabBar ()

@property (nonatomic,weak) GBHTabBarButton * selButton;

@end

@implementation GBHTabBar

- (void)setItems:(NSArray *)items
{
    _items = items;
    
    for (UITabBarItem * item in items) {
        
        UIButton * btn = [GBHTabBarButton buttonWithType:UIButtonTypeCustom];
        
        btn.tag = self.subviews.count;
        
        [btn setBackgroundImage:item.image forState:UIControlStateNormal];
        
        [btn setBackgroundImage:item.selectedImage forState:UIControlStateSelected];
        
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:btn];
        
        if (self.subviews.count == 1) {
            
            //默认选中第一个
            [self btnClick:btn];
        }
        
    }
}

- (void)btnClick:(GBHTabBarButton *)button
{
    _selButton.selected = NO;
    
    button.selected = YES;
    
    _selButton = button;
    
    if ([_delegate respondsToSelector:@selector(tabBar:didClickBtn:)]) {
        
        [_delegate tabBar:self didClickBtn:button.tag];
    }
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    NSInteger count = self.subviews.count;
    
    CGFloat x = 0;
    CGFloat y = 0;
    CGFloat w = [UIScreen mainScreen].bounds.size.width / count;
    CGFloat h = self.bounds.size.height;
    
    for (int i = 0; i < count; i++) {
        
        UIButton * btn = self.subviews[i];
        
        x = i * w;
        
        btn.frame = CGRectMake(x, y, w, h);
    }
}

@end
