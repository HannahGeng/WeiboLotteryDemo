//
//  GBHNewFeatureViewController.m
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/12.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import "GBHNewFeatureViewController.h"

@interface GBHNewFeatureViewController ()

@property (nonatomic, assign) CGFloat lastOffsetX;

@property (nonatomic, weak) UIImageView *guideView;

@property (nonatomic, weak) UIImageView *guideLargetView;

@property (nonatomic, weak) UIImageView *guideSmallView;

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
    
    [self setUpAllChildView];
}

#pragma mark - 添加所有子控件
- (void)setUpAllChildView
{
    //guide1
    UIImageView * guide = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guide1"]];
    _guideView = guide;
    guide.centetX = self.view.centetX;
    
    [self.collectionView addSubview:guide];
    
    //guideLine
    UIImageView * guideLine = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guideLine"]];
    guideLine.x -= 170;
    
    [self.collectionView addSubview:guideLine];
    
    //largeText
    UIImageView * largeText = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guideLargeText1"]];
    largeText.centetX = self.view.centetX;
    largeText.centetY = self.view.height * 0.7;
    _guideLargetView = largeText;
    [self.collectionView addSubview:largeText];
    
    // smallText
    UIImageView * smallText = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guideSmallText1"]];
    _guideSmallView = smallText;
    smallText.centetX = self.view.centetX;
    smallText.centetY = self.view.height * 0.8;
    [self.collectionView addSubview:smallText];
}

//减速完成
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    //获取当前x偏移量
    CGFloat curOffsetX = scrollView.contentOffset.x;
    
    //获取差值
    CGFloat delta = curOffsetX - _lastOffsetX;
    
    _guideView.x += 2 *  delta;
    _guideLargetView.x += 2 * delta;
    _guideSmallView.x +=  2 * delta;
    
    [UIView animateWithDuration:0.25 animations:^{
        _guideView.x -=  delta;
        _guideLargetView.x -= delta;
        _guideSmallView.x -=   delta;
    }];
    
    int page = curOffsetX / self.view.width + 1;
    
    // 修改控件的内容
    _guideView.image = [UIImage imageNamed:[NSString stringWithFormat:@"guide%d",page]];
    _lastOffsetX = curOffsetX;
    
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
