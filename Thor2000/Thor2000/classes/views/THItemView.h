//
//  THItemView.h
//  Thor2000
//
//  Created by 戴十三 on 2020/5/15.
//  Copyright © 2020 戴十三. All rights reserved.
//

#import "THBaseView.h"

NS_ASSUME_NONNULL_BEGIN

typedef void(^TapItemViewBlock)(int index);

@interface THItemView : THBaseView

@property (nonatomic, copy) TapItemViewBlock tapItemViewBlock;

@property (nonatomic, assign) int index;

@property (nonatomic, assign) int colorIndex;

@property (nonatomic, assign) int number;

/// 初始化
/// @param frame frame description
/// @param number number description
/// @param index index description
/// @param colorIndex colorIndex description
- (instancetype)initWithFrame:(CGRect)frame number:(int)number index:(int)index colorIndex:(int)colorIndex;


/// number更新
/// @param number number description
- (void)numberUpdateWithNumber:(int)number;

/// 格子颜色变化
- (void)backgroundViewColorUpdate;

@end

NS_ASSUME_NONNULL_END
