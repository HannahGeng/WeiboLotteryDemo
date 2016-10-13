//
//  GBHNewFeatureCell.m
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/12.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import "GBHNewFeatureCell.h"

@interface GBHNewFeatureCell ()

@property (nonatomic,weak) UIImageView * imageView;

@property (nonatomic,strong) UIButton * startButton;

@end

@implementation GBHNewFeatureCell

- (UIButton *)startButton
{
    if (_startButton == nil) {
        
        _startButton = [UIButton buttonWithType:UIButtonTypeCustom];
        
        NSLog(@"-----------start:%@",_startButton);
        
        [_startButton setBackgroundImage:[UIImage imageNamed:@"guideStart"] forState:UIControlStateNormal];
        
        [_startButton sizeToFit];
        
        [_startButton addTarget:self action:@selector(start) forControlEvents:UIControlEventTouchUpInside];
        
        _startButton.center = CGPointMake(self.width * 0.5, self.height * 0.9);
        
        [self.contentView addSubview:_startButton];
    }
    
    return _startButton;
}

- (UIImageView *)imageView
{
    if (_imageView == nil) {
        
        UIImageView * imageV = [[UIImageView alloc] initWithFrame:self.bounds];
        
        _imageView = imageV;
        
        [self.contentView addSubview:imageV];
    }
    
    return _imageView;
}

- (void)setImage:(UIImage *)image
{
    _image = image;
    
    self.imageView.image = image;
}

- (void)start
{
    GBHKeyWindow.rootViewController = [[GBHTabBarController alloc] init];
    
    CATransition * anim = [CATransition animation];
    anim.duration = 0.5;
    anim.type = @"rippleffect";
    [GBHKeyWindow.layer addAnimation:anim forKey:nil];
}

- (void)setUpIndexPath:(NSIndexPath *)indexPath count:(NSInteger)pagesCount
{
    if (indexPath.row == pagesCount - 1) {
        
        self.startButton.hidden = NO;
        
    }else{
        
        self.startButton.hidden = YES;
    }
}

@end
