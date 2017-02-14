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

@property (nonatomic, strong) UILabel *titleLabel;

@property (nonatomic, assign) CGFloat imageViewHeight;

@property (nonatomic, assign) CGFloat cellHeight;

- (CGFloat)imageOverflowHeight;

- (void)setImageOffset:(CGPoint)imageOffset;

@end
