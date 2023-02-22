//
//  JHCategoryRoundView.m
//  ScrollPageView
//
//  Created by HaoCold on 2019/8/26.
//  Copyright © 2019 HaoCold. All rights reserved.
//

#import "JHCategoryRoundView.h"

@implementation JHCategoryRoundView

- (void)initializeData {
    [super initializeData];
    
    UIEdgeInsets inset = [JHCategoryRoundCell titleLabelPaddingInRoundView];
    
    self.cellSpacing = 5;
    self.cellWidthIncrement = inset.left + inset.right;
    self.contentEdgeInsetLeft = 15;
    self.contentEdgeInsetRight = 15;
}

- (Class)preferredCellClass {
    return [JHCategoryRoundCell class];
}

- (void)refreshDataSource {
    NSMutableArray *tempArray = [NSMutableArray array];
    for (int i = 0; i < self.titles.count; i++) {
        JHCategoryRoundCellModel *cellModel = [[JHCategoryRoundCellModel alloc] init];
        cellModel.type = _type;
        cellModel.normalBackgroundImage = _normalBackgroundImage;
        cellModel.selectBackgroundImage = _selectBackgroundImage;
        cellModel.normalBackgroundColor = _normalBackgroundColor;
        cellModel.selectBackgroundColor = _selectBackgroundColor;
        [tempArray addObject:cellModel];
    }
    self.dataSource = tempArray;
}

@end
