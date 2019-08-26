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
        [tempArray addObject:cellModel];
    }
    self.dataSource = tempArray;
}

- (void)refreshCellModel:(JXCategoryBaseCellModel *)cellModel index:(NSInteger)index {
    [super refreshCellModel:cellModel index:index];
    
    JHCategoryRoundCellModel *model = (JHCategoryRoundCellModel *)cellModel;
    model.normalBackgroundColor = [UIColor colorWithRed:0.965 green:0.965 blue:0.965 alpha:1];
    model.selectedBackgroundColor = [UIColor redColor];
    if (index == self.selectedIndex) {
        model.currentBackgroundColor = [UIColor redColor];
    }else{
        model.currentBackgroundColor = [UIColor colorWithRed:0.965 green:0.965 blue:0.965 alpha:1];
    }
}

- (void)refreshSelectedCellModel:(JXCategoryBaseCellModel *)selectedCellModel unselectedCellModel:(JXCategoryBaseCellModel *)unselectedCellModel {
    [super refreshSelectedCellModel:selectedCellModel unselectedCellModel:unselectedCellModel];
    
    JHCategoryRoundCellModel *selectedModel = (JHCategoryRoundCellModel *)selectedCellModel;
    JHCategoryRoundCellModel *unselectedModel = (JHCategoryRoundCellModel *)unselectedCellModel;
    
    selectedModel.currentBackgroundColor = [UIColor redColor];
    unselectedModel.currentBackgroundColor = [UIColor colorWithRed:0.965 green:0.965 blue:0.965 alpha:1];
}

@end
