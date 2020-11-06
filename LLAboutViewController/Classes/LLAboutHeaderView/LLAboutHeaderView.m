//
//  LLAboutHeaderView.m
//  FDriver
//
//  Created by ZHK on 2020/3/2.
//  Copyright © 2020 ZHK. All rights reserved.
//

#import "LLAboutHeaderView.h"
#import "QMUIKit.h"
#import "Masonry.h"

@interface LLAboutHeaderView ()

@property (nonatomic, strong) CALayer     *hairLayer;
@property (nonatomic, strong) UIImageView *logoView;
@property (nonatomic, strong) QMUILabel   *nameLabel;

@end

@implementation LLAboutHeaderView

#pragma mark - Init

- (instancetype)init {
    if (self = [super init]) {
        [self setupUI];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setupUI];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    if (self = [super initWithCoder:coder]) {
        [self setupUI];
    }
    return self;
}

#pragma mark - UI

- (void)setupUI {
    self.backgroundColor = [UIColor whiteColor];
    [self.layer addSublayer:self.hairLayer];
    [self addSubview:self.logoView];
    [self addSubview:self.nameLabel];
    
    CGFloat scaleX = 414.0f / UIScreen.mainScreen.bounds.size.width;
    
    [_logoView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(0.0f);
        make.centerY.mas_equalTo(-15.0f);
        make.size.mas_equalTo(CGSizeMake(80 * scaleX, 80 * scaleX));
    }];
    
    [_nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(0.0f);
        make.top.equalTo(self.logoView.mas_bottom).offset(15.0f);
    }];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    _hairLayer.frame = CGRectMake(0, 0, CGRectGetWidth(self.bounds), 10.0f);
}

#pragma mark - Setter

- (void)setAppName:(NSString *)appName {
    if (_appName != appName) {
        _appName = appName;
        self.nameLabel.text = [NSString stringWithFormat:@"%@(%@)", _appName, NSBundle.mainBundle.infoDictionary[@"CFBundleShortVersionString"]];
    }
}

- (void)setLogoName:(NSString *)logoName {
    if (_logoName != logoName) {
        _logoName = logoName;
        self.logoView.image = [UIImage imageNamed:_logoName];
    }
}

#pragma mark - Getter

- (CALayer *)hairLayer {
    if (_hairLayer == nil) {
        self.hairLayer = [CALayer layer];
        _hairLayer.backgroundColor = QMUICMI.tableViewBackgroundColor.CGColor;
    }
    return _hairLayer;
}

- (UIImageView *)logoView {
    if (_logoView == nil) {
        CGFloat scaleX = 414.0f / UIScreen.mainScreen.bounds.size.width;
        self.logoView = [[UIImageView alloc] init];
        _logoView.layer.cornerRadius = 15.0 * scaleX;
        _logoView.layer.borderWidth = 0.5f;
        _logoView.layer.borderColor = [UIColor.grayColor colorWithAlphaComponent:0.3].CGColor;
    }
    return _logoView;
}

- (QMUILabel *)nameLabel {
    if (_nameLabel == nil) {
        self.nameLabel = [[QMUILabel alloc] qmui_initWithFont:[UIFont systemFontOfSize:14.0f]
                                                    textColor:[UIColor grayColor]];
    }
    return _nameLabel;
}

@end
