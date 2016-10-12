//
//  GBHNewFeatureViewController.m
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/12.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import "GBHNewFeatureViewController.h"

@interface GBHNewFeatureViewController ()

@end

@implementation GBHNewFeatureViewController

static NSString * ID = @"cell";

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    
    self.collectionView.backgroundColor = [UIColor greenColor];
    
    self.collectionView.bounces = NO;
    
    self.collectionView.showsHorizontalScrollIndicator = NO;
    
    self.collectionView.pagingEnabled = YES;
    
    // 注册cell
    [self.collectionView registerClass:[GBHNewFeatureCell class] forCellWithReuseIdentifier:ID];
}

- (instancetype)init
{
    //流水布局对象，设置cell的尺寸和位置
    UICollectionViewFlowLayout * layout = [[UICollectionViewFlowLayout alloc] init];
    
    //设置滚动方向
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    //设置cell的尺寸
    layout.itemSize = GBHScreenBounds.size;
    
    //设置cell之间的间距
    layout.minimumInteritemSpacing = 0;
    
    //设置行距
    layout.minimumLineSpacing = 0;
    
    return [super initWithCollectionViewLayout:layout];
}

#pragma mark - UICollectionView有多少组
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {

    return 1;
}

#pragma mark - 返回第section组有多少个cell
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return 4;
}

#pragma mark - 返回的每个cell长什么样
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    GBHNewFeatureCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:ID forIndexPath:indexPath];
    
    NSString *imageName = [NSString stringWithFormat:@"guide%ldBackground",indexPath.item + 1];
    
    cell.image = [UIImage imageNamed:imageName];
    
    return cell;
}

@end
