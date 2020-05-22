//
//  THItemView.m
//  Thor2000
//
//  Created by 戴十三 on 2020/5/15.
//  Copyright © 2020 戴十三. All rights reserved.
//

#import "THItemView.h"

@interface THItemView()

@property (nonatomic, strong) UILabel *numberLabel;

@property (nonatomic, strong) UIView *backgroundView;

@end

@implementation THItemView

- (instancetype)initWithFrame:(CGRect)frame number:(int)number index:(int)index colorIndex:(int)colorIndex{
    if (self == [super initWithFrame:frame]) {
        self.frame = frame;
        self.number = number;
        self.index = index;
        self.colorIndex = colorIndex;
        [self configureUI];
    }
    return self;
}

- (void)configureUI{
    // background create
    self.backgroundView = [[UIView alloc] initWithFrame:CGRectMake(1.5, 1.5, self.frame.size.width - 3, self.frame.size.height - 3)];
    self.backgroundView.backgroundColor = [UIColor whiteColor];
    [self addSubview:self.backgroundView];
    // label create
    self.numberLabel = [UILabel new];
    self.numberLabel.font = FONTBOLD(15);
    [self numberLabelUpdate];
    [self addSubview:self.numberLabel];
    [self.numberLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.mas_centerX);
        make.centerY.mas_equalTo(self.mas_centerY);
    }];
    // 格子颜色变化
    [self backgroundViewColorUpdate];
    // tap
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapView)];
    [self addGestureRecognizer:tap];
}


# pragma mark -- number 更新
- (void)numberUpdateWithNumber:(int)number{
    self.number = number;
    [self numberLabelUpdate];
}

- (void)numberLabelUpdate{
    if (self.number == -1) {
        self.numberLabel.hidden = YES;
    } else {
        self.numberLabel.hidden = NO;
        self.numberLabel.text = [NSString stringWithFormat:@"%i", self.number];
    }
}

# pragma mark -- 格子颜色变化
- (void)backgroundViewColorUpdate{
    if (self.number == -1) {
        self.backgroundView.layer.borderColor = UIColorFromHex(0xFFFFFF).CGColor;
        self.backgroundView.layer.borderWidth = 6;
    } else {
        UIColor *color = [THHandle colorWithColorIndex:self.colorIndex];
//        self.numberLabel.textColor = color;
        self.backgroundView.layer.borderColor = color.CGColor;
        self.backgroundView.layer.borderWidth = 6;
    }
}

# pragma mark -- tap
- (void)tapView{
    if (self.tapItemViewBlock) {
        self.tapItemViewBlock(self.index);
    }
}

@end
