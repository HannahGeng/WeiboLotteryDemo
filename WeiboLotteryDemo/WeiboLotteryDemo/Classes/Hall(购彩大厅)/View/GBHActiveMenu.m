//
//  GBHActiveMenu.m
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/9.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import "GBHActiveMenu.h"

@implementation GBHActiveMenu

- (IBAction)close:(UIButton *)sender {
 
    if ([_delegate respondsToSelector:@selector(activeMenuDidClickCloseBtn:)]) {
        
        [_delegate activeMenuDidClickCloseBtn:self];
    }
}

+ (instancetype)activeMenu
{
    return [[[NSBundle mainBundle]loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
}

+ (instancetype)showInPoint:(CGPoint)point
{
    GBHActiveMenu * meun = [GBHActiveMenu activeMenu];
    
    meun.center = point;
    
    [GBHKeyWindow addSubview:meun];
    
    return meun;
}

+ (void)hideInPoint:(CGPoint)point completion:(void(^)())completion
{
    void(^completion1)() = ^ {
      
        if (completion) {
            
            completion();
        }
    };
    
    for (GBHActiveMenu * childView in GBHKeyWindow.subviews) {
        
        if ([childView isKindOfClass:self]) {
            
            [childView setUpHideAnim:point completion:completion1];
        }
    }
}

#pragma mark - 隐藏动画
- (void)setUpHideAnim:(CGPoint)point completion:(void (^)())completion
{
    [UIView animateWithDuration:1 animations:^{
        
        CGAffineTransform transform = CGAffineTransformIdentity;
        
        transform = CGAffineTransformTranslate(transform, -self.center.x + point.x, -self.center.y + point.y);
        
        transform = CGAffineTransformScale(transform, 0.01, 0.01);
        
        self.transform = transform;
        
    } completion:^(BOOL finished) {
        
        [self removeFromSuperview];
        
        // 动画完成的时候，也需要告诉外界，
        
        if (completion) {
            completion();
        }

    }];
}

@end
