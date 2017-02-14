//
//  LTParallaxCell.m
//  LTParallaxTableView
//
//  Created by 孟令通 on 17/2/12.
//  Copyright © 2017年 LryMlt. All rights reserved.
//

#import "LTParallaxCell.h"

@implementation LTParallaxCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        
        // 设置默认图片高度
        _imageViewHeight = 300;
        
        // 设置默认cell高度
        _cellHeight = 200;
        
        _mainImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width , _imageViewHeight)];
        
        _mainImageView.contentMode = UIViewContentModeScaleToFill;
        
        [self.contentView addSubview:_mainImageView];
        
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 80, [UIScreen mainScreen].bounds.size.width, 40)];
        
        _titleLabel.backgroundColor = [UIColor colorWithRed:0.94 green:0.94 blue:0.94 alpha:0.50];
        
        _titleLabel.text = @"这是图片上的文字";
        
        _titleLabel.textAlignment = 1;
        
        [self.contentView addSubview:_titleLabel];
    }
    
    return self;
}

-(void)setImageViewHeight:(CGFloat)imageViewHeight
{
    if (_imageViewHeight != imageViewHeight) {
        
        imageViewHeight = _imageViewHeight;
        
        // 将图片高度修改为用户设置
        _mainImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width , _imageViewHeight)];
        
    }
}

-(void)setCellHeight:(CGFloat)cellHeight
{
    if (_cellHeight != cellHeight) {
        
        cellHeight = _cellHeight;
        
    }
}

/**
 *  返回图片大于imageView的高度
 *
 *  @return 图片大于imageView的高度
 */
- (CGFloat)imageOverflowHeight
{
    return _mainImageView.frame.size.height - _cellHeight;
}

/**
 *  设置imageView偏移量
 *
 *  @param imageOffset 偏移量
 */
- (void)setImageOffset:(CGPoint)imageOffset
{
    CGRect frame = _mainImageView.frame;
    
    frame.origin = imageOffset;
    
    _mainImageView.frame = frame;
}


@end
