# LTParallaxTableView TableView视差效果

使用起来很简单，把资源文件拖入工程，将LTParallaxTableView头文件引入到VC中，按照我们开放好的接口挨个设置就好啦！例如：

	LTParallaxTableView *tableView = [[LTParallaxTableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    
    // 设置包含标题
    tableView.isHasTitle        = YES;
    // 将图片数组传入
    	tableView.sourceArray       = sourceArr;
    // 将标题数组传入
    tableView.titleSourceArray  = titleSourceArr;
    // 设置cell的高度
    tableView.cellHeight        = 200;
    // 设置imageView的高度
    tableView.imageHeight       = 300;
    // 设置标题背景颜色
    tableView.titleBackgroundColor = [UIColor colorWithRed:0.36 green:0.72 blue:0.33 alpha:0.40];
    
    [self.view addSubview:tableView];
