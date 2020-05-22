//
//  THHandle.h
//  Thor2000
//
//  Created by 戴十三 on 2020/5/15.
//  Copyright © 2020 戴十三. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "THItemModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface THHandle : NSObject

# pragma mark -- 根据颜色index来获取颜色
/// 根据颜色index来获取颜色
/// @param index index description
+ (UIColor *)colorWithColorIndex:(int)index;

@end

NS_ASSUME_NONNULL_END
