//
//  THMainView.m
//  Thor2000
//
//  Created by 戴十三 on 2020/5/15.
//  Copyright © 2020 戴十三. All rights reserved.
//

#import "THMainView.h"
#import "THItemView.h"
#import "THItemModel.h"

@interface THMainView()

@property (nonatomic, assign) int colorNumber;

@property (nonatomic, assign) CGFloat itemWidth;



@property (nonatomic, strong) NSMutableArray *views;

@property (nonatomic, strong) NSMutableArray *models;

@end


@implementation THMainView

- (instancetype)initWithFrame:(CGRect)frame hor:(int)hor ver:(int)ver colorNumber:(int)colorNumber{
    if (self == [super initWithFrame:frame]) {
        self.colorNumber = colorNumber;
        self.hor = hor;
        self.ver = ver;
        [self configureData];
        [self configureUI];
    }
    return self;
}

- (void)configureData{
    self.models = [NSMutableArray array];
    self.views = [NSMutableArray array];
}

- (void)configureUI{
    [self createView];
}

- (void)createView{
    WEAKSELF(weakSelf);
    self.itemWidth = self.frame.size.width / self.hor;
    for (int i = 0; i < self.hor; i++) {
        for (int j = 0; j < self.ver; j++) {
            CGFloat x = i * self.itemWidth;
            CGFloat y = self.frame.size.height - (j+1) * self.itemWidth;
//            CGFloat y = j * self.itemWidth;
            int index = i * self.hor + j;
            int colorIndex = [self randomColor];
            int number = -1;
            if (j == 0) {
                number = 1;
            }
            THItemView *itemView = [[THItemView alloc] initWithFrame:CGRectMake(x, y, self.itemWidth, self.itemWidth) number:number index:index colorIndex:colorIndex];
            itemView.userInteractionEnabled = YES;
            [self addSubview:itemView];
            [itemView setTapItemViewBlock:^(int index) {
                [weakSelf tapItemViewWithIndex:index];
            }];
            [self.views addObject:itemView];
            THItemModel *model = [THItemModel new];
            model.index = index;
            model.x = i;
            model.y = j;
            model.colorIndex = colorIndex;
            model.number = number;
            [self.models addObject:model];
        }
    }
}

- (int)randomColor{
    int index = arc4random() % (self.colorNumber);
    return index;
}

# pragma mark -- 初始化itemModels
- (NSMutableArray *)itemModelsCreate{
    return self.models;
}

# pragma mark -- tap Index
- (void)tapItemViewWithIndex:(int)index{
    if (self.tapItemViewBlock) {
        self.tapItemViewBlock(index);
    }
}





@end
