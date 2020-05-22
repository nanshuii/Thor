//
//  THItemModel.h
//  Thor2000
//
//  Created by 戴十三 on 2020/5/15.
//  Copyright © 2020 戴十三. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface THItemModel : UIView

@property (nonatomic, assign) int colorIndex;

@property (nonatomic, assign) int x;

@property (nonatomic, assign) int y;

@property (nonatomic, assign) int index;

@property (nonatomic, assign) int number; // -1 表示次格为空




@end

NS_ASSUME_NONNULL_END
