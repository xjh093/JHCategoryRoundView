//
//  JHCategoryRoundCellModel.h
//  ScrollPageView
//
//  Created by HaoCold on 2019/8/26.
//  Copyright © 2019 HaoCold. All rights reserved.
//

#import "JXCategoryTitleCellModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface JHCategoryRoundCellModel : JXCategoryTitleCellModel

@property (nonatomic,  strong) UIColor *currentBackgroundColor;
@property (nonatomic,  strong) UIColor *normalBackgroundColor;
@property (nonatomic,  strong) UIColor *selectedBackgroundColor;

@end

NS_ASSUME_NONNULL_END
