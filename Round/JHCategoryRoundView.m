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

@end
