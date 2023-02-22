//
//  JHCategoryRoundCell.m
//  ScrollPageView
//
//  Created by HaoCold on 2019/8/26.
//  Copyright © 2019 HaoCold. All rights reserved.
//

#import "JHCategoryRoundCell.h"
#import "JHCategoryRoundCellModel.h"

@interface JHCategoryRoundCell()
@property (nonatomic,  strong) UIImageView *roundView;
@end

@implementation JHCategoryRoundCell

- (void)initializeViews {
    [super initializeViews];
    
    UIImageView *roundView = [[UIImageView alloc] init];
    roundView.clipsToBounds = YES;
    [self.contentView addSubview:roundView];
    [self.contentView sendSubviewToBack:roundView];
    _roundView = roundView;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    UIEdgeInsets inset = [JHCategoryRoundCell titleLabelPaddingInRoundView];
    CGRect frame = self.titleLabel.frame;
    frame.origin.x      -= inset.left;
    frame.origin.y      -= inset.top;
    frame.size.width    += inset.left + inset.right;
    frame.size.height   +=  inset.top + inset.bottom;
    _roundView.frame = frame;
    _roundView.layer.cornerRadius = CGRectGetHeight(frame)*0.5;
    _roundView.highlighted = self.cellModel.isSelected;
}

- (void)reloadData:(JXCategoryBaseCellModel *)cellModel
{
    [super reloadData:cellModel];
    
    JHCategoryRoundCellModel *model = (JHCategoryRoundCellModel *)cellModel;
    
    // 图片
    if (model.type == 0) {
        _roundView.image = model.normalBackgroundImage;
        _roundView.highlightedImage = model.selectBackgroundImage;
        _roundView.highlighted = cellModel.isSelected;
    }else if (model.type == 1) {
        _roundView.backgroundColor = cellModel.isSelected ? model.selectBackgroundColor : model.normalBackgroundColor;
    }
}

+ (UIEdgeInsets)titleLabelPaddingInRoundView{
    return UIEdgeInsetsMake(5, 14, 5, 14);
}

@end
