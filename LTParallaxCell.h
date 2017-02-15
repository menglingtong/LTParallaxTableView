//
//  LTParallaxCell.h
//  LTParallaxTableView
//
//  Created by 孟令通 on 17/2/12.
//  Copyright © 2017年 LryMlt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LTParallaxCell : UITableViewCell

@property (nonatomic, strong) UIImageView *mainImageView;

/** 是否需要title */
@property (nonatomic, assign) BOOL isHasTitle;

/** 标题label */
@property (nonatomic, strong) UILabel *titleLabel;

/** 标题背景色 */
@property (nonatomic, strong) UIColor *titleBackgroundColor;

/** 标题文字颜色 */
@property (nonatomic, strong) UIColor *titleTextColor;

/** 图片高度 */
@property (nonatomic, assign) CGFloat imageViewHeight;

/** cell高度 */
@property (nonatomic, assign) CGFloat cellHeight;

- (CGFloat)imageOverflowHeight;

- (void)setImageOffset:(CGPoint)imageOffset;

@end
