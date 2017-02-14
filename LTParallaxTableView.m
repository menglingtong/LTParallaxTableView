//
//  LTParallaxTableView.m
//  LTParallaxTableView
//
//  Created by 孟令通 on 17/2/14.
//  Copyright © 2017年 LryMlt. All rights reserved.
//

#import "LTParallaxTableView.h"

#import "LTParallaxCell.h"

@implementation LTParallaxTableView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
    self = [super initWithFrame:frame style:style];
    
    if (self) {
        
        [self registerClass:[LTParallaxCell class] forCellReuseIdentifier:@"mycell"];
        
        self.delegate = self;
        
        self.dataSource = self;
        
        self.separatorStyle = UITableViewCellSeparatorStyleNone;
        
        // 设置默认cell高度
        self.cellHeight = 200;
        
        self.imageHeight = 300;
    }
    
    return self;
}

- (void) updateImageViewOffsetOfCell:(LTParallaxCell *)cell
{
    CGFloat cellY = cell.frame.origin.y - self.contentOffset.y;
    
    CGFloat imgMaxHeight = [cell imageOverflowHeight];
    
    CGFloat offset = 0.0f - imgMaxHeight * cellY / self.frame.size.height;
    
    [cell setImageOffset:CGPointMake(0.0f, offset)];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return _cellHeight;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _sourceArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    LTParallaxCell *cell        = [self dequeueReusableCellWithIdentifier:@"mycell"];
    
    cell.mainImageView.image    = [UIImage imageNamed:[_sourceArray objectAtIndex:indexPath.row]];
    
    cell.selectionStyle         = UITableViewCellSelectionStyleNone;
    
    cell.clipsToBounds          = YES;
    
    cell.imageViewHeight = _imageHeight;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self updateImageViewOffsetOfCell:(LTParallaxCell *)cell];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    for (LTParallaxCell *cell in self.visibleCells) {
        
        [self updateImageViewOffsetOfCell:cell];
        
    }
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
