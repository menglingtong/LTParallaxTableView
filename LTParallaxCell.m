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
        
        
    }
    
    return self;
}

- (void)setIsHasTitle:(BOOL)isHasTitle
{
    if (_isHasTitle != isHasTitle) {
        
        _isHasTitle = isHasTitle;
        
    }
    
    if (_isHasTitle) {
        
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 80, [UIScreen mainScreen].bounds.size.width, 40)];
        
        _titleLabel.text = @"这是图片上的文字";
        
        _titleLabel.textAlignment = 1;
        
        [self.contentView addSubview:_titleLabel];
        
    }
}

- (void)setTitleBackgroundColor:(UIColor *)titleBackgroundColor
{
    if (_titleBackgroundColor != titleBackgroundColor) {
        
        _titleBackgroundColor = titleBackgroundColor;
        
    }
    
    _titleLabel.backgroundColor = titleBackgroundColor;
}

/**
 *  设置图片高度
 *
 *  @param imageViewHeight 图片高度
 */
-(void)setImageViewHeight:(CGFloat)imageViewHeight
{
    if (_imageViewHeight != imageViewHeight) {
        
        _imageViewHeight = imageViewHeight;
        
        // 将图片高度修改为用户设置
        _mainImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width , _imageViewHeight)];
        
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
