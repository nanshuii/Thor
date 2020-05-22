//
//  THCommonHeader.h
//  Thor2000
//
//  Created by 戴十三 on 2020/5/15.
//  Copyright © 2020 戴十三. All rights reserved.
//

#ifndef THCommonHeader_h
#define THCommonHeader_h

# pragma mark -- 引用
#define WEAKSELF(weakSelf)  __weak __typeof(&*self)weakSelf = self;

# pragma mark -- 屏幕高宽
#define kFullScreenWidth           ([UIScreen mainScreen].bounds.size.width)
#define kFullScreenHeight          ([UIScreen mainScreen].bounds.size.height)

# pragma mark -- 自定义打印，在debug时打印，发布时不打印
#ifdef DEBUG
#define SSLog(fmt, ...) NSLog((@"[函数名:%s] " " [行号:%d] " fmt), __FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
#define SSLog(fmt, ...)
#endif

# pragma mark -- 字体
#undef FONTWITHNAME
#define FONTWITHNAME(fontName,fontSize)    ([UIFont fontWithName:fontName size:fontSize])
//系统默认字体   设置字体的大小
#undef FONTDEFAULT
#define FONTDEFAULT(fontSize)            ([UIFont systemFontOfSize:fontSize])
//系统加粗字体   设置字体的大小
#undef FONTBOLD
#define NORMALFONTNAME              @"PingFangSC-Regular"
#define SEMIBOLDFONTNAME            @"PingFangSC-Semibold"
#define FONTBOLD(fontSize)            ([UIFont boldSystemFontOfSize:fontSize])

#define FONTNORMAL(fontsize) ([UIFont [UIFont fontWithName:NORMALFONTNAME size:fontsize])
#define FONTSEMIBOLD(fontsize) ([UIFont [UIFont fontWithName:SEMIBOLDFONTNAME size:fontsize])

#endif /* THCommonHeader_h */
