//
//  THHandle.m
//  Thor2000
//
//  Created by 戴十三 on 2020/5/15.
//  Copyright © 2020 戴十三. All rights reserved.
//

#import "THHandle.h"

@implementation THHandle

# pragma mark -- 根据颜色index来获取颜色
+ (UIColor *)colorWithColorIndex:(int)index{
    NSArray *colors = @[
        [UIColor redColor],
        [UIColor blueColor],
        [UIColor greenColor],
        [UIColor darkGrayColor],
    ];
    return colors[index];
}




@end
