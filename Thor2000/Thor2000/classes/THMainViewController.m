//
//  THMainViewController.m
//  Thor2000
//
//  Created by 戴十三 on 2020/5/15.
//  Copyright © 2020 戴十三. All rights reserved.
//

#import "THMainViewController.h"
#import "THMainView.h"
#import "THItemModel.h"

@interface THMainViewController ()

@property (nonatomic, strong) THMainView *mainView;

@property (nonatomic, strong) NSMutableArray *itemModels;

@end

@implementation THMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self configureData];
    [self configureUI];
}

- (void)configureData{
    self.itemModels = [NSMutableArray array];
}

- (void)configureUI{
    WEAKSELF(weakSelf);
    // mainView
    self.mainView = [[THMainView alloc] initWithFrame:CGRectMake(0, 0, kFullScreenWidth, kFullScreenWidth) hor:10 ver:10 colorNumber:4];
    [self.contentView addSubview:self.mainView];
    [self.contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.contentView.mas_left);
        make.right.mas_equalTo(self.contentView.mas_right);
        make.top.mas_equalTo(self.contentView.mas_top);
        make.bottom.mas_equalTo(self.contentView.mas_bottom);
    }];
    [self.mainView setTapItemViewBlock:^(int index) {
        [weakSelf tapMainViewWithIndex:index];
    }];
    // itemModels
    self.itemModels = [self.mainView itemModelsCreate];
}

# pragma mark -- tap mainView
- (void)tapMainViewWithIndex:(int)index{
    THItemModel *model = self.itemModels[index];
    if (model.number == -1) {
        return;
    }
}








# pragma mark -- 寻找




@end
