//
//  THMainView.h
//  Thor2000
//
//  Created by 戴十三 on 2020/5/15.
//  Copyright © 2020 戴十三. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^TapItemViewBlock)(int index);

@interface THMainView : UIView

@property (nonatomic, copy) TapItemViewBlock tapItemViewBlock;

@property (nonatomic, assign) int hor;

@property (nonatomic, assign) int ver;

/// 初始化
/// @param frame frame description
/// @param hor hor description
/// @param ver ver description
/// @param colorNumber colorNumber description
- (instancetype)initWithFrame:(CGRect)frame hor:(int)hor ver:(int)ver colorNumber:(int)colorNumber;

/// 初始化itemModels
- (NSMutableArray *)itemModelsCreate;

@end

NS_ASSUME_NONNULL_END
