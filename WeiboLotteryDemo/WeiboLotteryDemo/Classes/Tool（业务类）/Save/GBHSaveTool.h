//
//  GBHSaveTool.h
//  WeiboLotteryDemo
//
//  Created by binghan geng on 16/10/13.
//  Copyright © 2016年 binghan geng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GBHSaveTool : NSObject

+ (id)objectForKey:(NSString *)defaultName;

+ (void)setObject:(id)value forKey:(NSString *)defaultName;

@end
