//
//  GBHMyLotteryViewController.m
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/9.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import "GBHMyLotteryViewController.h"

@interface GBHMyLotteryViewController ()

@property (weak, nonatomic) IBOutlet UIButton *loginBtn;

@end

@implementation GBHMyLotteryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 获取按钮背景图片
    UIImage *image = _loginBtn.currentBackgroundImage;
    
    image = [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
    
    // 注意按钮的图片只能通过代码去拉伸
    [_loginBtn setBackgroundImage:image forState:UIControlStateNormal];
    
    // 拉伸登录按钮的背景图片
    [self setUpNav];
    
}

- (void)setUpNav
{
    // 设置左右两边的按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [btn setTitle:@"客服" forState:UIControlStateNormal];
    
    [btn setImage:[UIImage imageNamed:@"FBMM_Barbutton"] forState:UIControlStateNormal];
    
    // 自适应尺寸
    [btn sizeToFit];
    
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    
    // 左边
    self.navigationItem.leftBarButtonItem = leftItem;
    
    // 右边
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageWithOriRenderingImage:@"Mylottery_config"] style:UIBarButtonItemStylePlain target:self action:@selector(settting)];
    
}

- (void)settting
{
    NSLog(@"点击设置");
}

@end
