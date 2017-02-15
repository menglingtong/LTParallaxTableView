//
//  LTParallaxTableView.h
//  LTParallaxTableView
//
//  Created by 孟令通 on 17/2/14.
//  Copyright © 2017年 LryMlt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LTParallaxTableView : UITableView <UITableViewDelegate, UITableViewDataSource>

/** 数据源数组，存储图片名称或地址 */
@property (nonatomic, strong) NSArray *sourceArray;

/** 数据源数组 */
@property (nonatomic, strong) NSArray *titleSourceArray;

/** cell的高度 */
@property (nonatomic, assign) CGFloat cellHeight;

/** 图片高度 */
@property (nonatomic, assign) CGFloat imageHeight;

/** 是否包含标题 */
@property (nonatomic, assign) BOOL isHasTitle;

/** 标题背景色 */
@property (nonatomic, strong) UIColor *titleBackgroundColor;

/** 标题文字颜色 */
@property (nonatomic, strong) UIColor *titleTextColor;

@end
