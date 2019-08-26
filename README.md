# JHCategoryRoundView
基于 JHCategoryView 自定义菜单

---

# What

添加了长圆形的背景

---

# Usage
- 依赖 `JXCategoryRoundView`
- 导入文件夹 `Round`

```
- (JHCategoryTitleView *)titleView{
    if (!_titleView) {
        _titleView = [[JHCategoryRoundView alloc] init];
        _titleView.backgroundColor = [UIColor whiteColor];
        _titleView.titleColorGradientEnabled = YES;
        _titleView.collectionView.scrollEnabled = YES;
    }
    return _titleView;
}
```
