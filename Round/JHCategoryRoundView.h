//
//  JHCategoryRoundView.h
//  ScrollPageView
//
//  Created by HaoCold on 2019/8/26.
//  Copyright © 2019 HaoCold. All rights reserved.
//

#import "JXCategoryTitleView.h"
#import "JHCategoryRoundCell.h"
#import "JHCategoryRoundCellModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface JHCategoryRoundView : JXCategoryTitleView

/// 0 - 使用图片, 1 - 使用颜色
@property (nonatomic,  assign) NSInteger  type;

/// 使用图片作为背景
@property (nonatomic,  strong) UIImage *normalBackgroundImage;
@property (nonatomic,  strong) UIImage *selectBackgroundImage;

/// 使用颜色作为背景
@property (nonatomic,  strong) UIColor *normalBackgroundColor;
@property (nonatomic,  strong) UIColor *selectBackgroundColor;

@end

NS_ASSUME_NONNULL_END
