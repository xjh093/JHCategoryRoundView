//
//  JHCategoryRoundCell.h
//  ScrollPageView
//
//  Created by HaoCold on 2019/8/26.
//  Copyright © 2019 HaoCold. All rights reserved.
//

#import "JXCategoryTitleCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface JHCategoryRoundCell : JXCategoryTitleCell

/**
 文字 相对于 圆形背景 上、左、下、右的距离

 @return UIEdgeInsets
 */
+ (UIEdgeInsets)titleLabelPaddingInRoundView;

@end

NS_ASSUME_NONNULL_END
