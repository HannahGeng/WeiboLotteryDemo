//
//  GBHNewFeatureCell.h
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/12.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GBHNewFeatureCell : UICollectionViewCell

/** image */
@property (nonatomic,strong)UIImage * image;

- (void)setUpIndexPath:(NSIndexPath *)indexPath count:(NSInteger)pagesCount;

@end
