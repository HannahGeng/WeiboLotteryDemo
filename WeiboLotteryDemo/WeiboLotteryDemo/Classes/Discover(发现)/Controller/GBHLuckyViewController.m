//
//  GBHLuckyViewController.m
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/10.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import "GBHLuckyViewController.h"

@interface GBHLuckyViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *lightView;

@end

@implementation GBHLuckyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *image = [UIImage imageNamed:@"lucky_entry_light0"];
    UIImage *image1 = [UIImage imageNamed:@"lucky_entry_light1"];
    _lightView.animationImages = @[image,image1];
    _lightView.animationDuration = 1;
    [_lightView startAnimating];
}

@end
