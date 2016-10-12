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

@end

@implementation GBHNewFeatureCell

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

@end
