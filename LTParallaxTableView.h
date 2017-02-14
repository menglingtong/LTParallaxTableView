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

/** cell的高度 */
@property (nonatomic, assign) CGFloat cellHeight;

/** 图片高度 */
@property (nonatomic, assign) CGFloat imageHeight;

@end
