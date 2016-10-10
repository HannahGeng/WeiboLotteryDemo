//
//  GBHDownMenu.m
//  WeiboLotteryDemo
//
//  Created by zdzx-008 on 16/10/10.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import "GBHDownMenu.h"

#define GBHCols 3

#define GBHItemWH GBHScreenW / GBHCols

@interface GBHDownMenu ()

@property (nonatomic,strong) NSArray * items;

@property (nonatomic,strong) NSMutableArray * btns;

@end

@implementation GBHDownMenu

- (NSMutableArray *)btns
{
    if (_btns == nil) {
        
        _btns = [NSMutableArray array];
    }
    
    return _btns;
}

+ (instancetype)showInView:(UIView *)superView items:(NSArray *)items oriY:(CGFloat)oriY
{
    NSUInteger count = items.count;
    
    if (count % 3) {
        
        //抛出异常
        NSException *excp = [NSException exceptionWithName:@"items的总数不符合" reason:@"传入的数组总数必须是3的倍数" userInfo:nil];
        [excp raise];
    }
    
    NSUInteger rows = (count - 1) / GBHCols; + 1;
    CGFloat menuH = rows * GBHItemWH;
    
    GBHDownMenu * menu = [[GBHDownMenu alloc] initWithFrame:CGRectMake(0, oriY, GBHScreenW, menuH)];
    
    menu.items = items;
    
    //添加按钮
    [menu setUpAllBtns];
    
    //添加分割线
    [menu setUpAllDivideView];
    
    //添加黑色的View
    UIView * blackView = [[UIView alloc] initWithFrame:menu.frame];
    
    blackView.backgroundColor = [UIColor blackColor];
    
    [superView addSubview:blackView];
    
    //往下移动的动画
    menu.transform = CGAffineTransformMakeTranslation(0, -menu.height);
    
    [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:0.3 initialSpringVelocity:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        
        menu.transform = CGAffineTransformIdentity;
        
    } completion:^(BOOL finished) {
        
        [blackView removeFromSuperview];
    }];
    
    menu.backgroundColor = [UIColor blackColor];
    
    [superView addSubview:menu];
    
    return menu;
}

#pragma mark - 添加所有按钮
- (void)setUpAllBtns
{
    for (GBHMenuItem * item in self.items) {
        
        UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
        
        [btn setTitle:item.title forState:UIControlStateNormal];
        
        [btn setImage:item.image forState:UIControlStateNormal];
        
        [self addSubview:btn];
        
        [self.btns addObject:btn];
    }
}

- (void)setUpAllDivideView
{
    for (int i = 0; i < GBHCols - 1; i++) {
        
        UIView * divideV = [[UIView alloc] init];
        
        divideV.backgroundColor = [UIColor whiteColor];
        
        divideV.frame = CGRectMake((i + 1) * GBHItemWH, 0, 1, self.height);
        
        [self addSubview:divideV];
    }
    
    NSUInteger rows = (self.items.count - 1) / GBHCols + 1;
    
    for (int i = 0; i < rows - 1; i++) {
        
        UIView * divideV = [[UIView alloc] init];
        
        divideV.backgroundColor = [UIColor whiteColor];
        
        divideV.frame = CGRectMake(0, (i + 1) * GBHItemWH, self.width, 1);
        
        [self addSubview:divideV];
    }
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    //布局所有按钮
    NSUInteger count = self.items.count;
    
    int col = 0;
    NSUInteger row = 0;
    CGFloat x = 0;
    CGFloat y = 0;
    
    for (NSUInteger i = 0; i < count; i++) {
        
        col = i % GBHCols;
        row = i / GBHCols;
        
        UIButton * btn = self.btns[i];
        x = col * GBHItemWH;
        y = row * GBHItemWH;
        
        btn.frame = CGRectMake(x, y, GBHItemWH, GBHItemWH);
    }
}

- (void)hide
{
    [UIView animateWithDuration:0.5 animations:^{
        
        self.transform = CGAffineTransformMakeTranslation(0, -self.height);
        
    } completion:^(BOOL finished) {
        
        [self removeFromSuperview];
    }];
}

@end
