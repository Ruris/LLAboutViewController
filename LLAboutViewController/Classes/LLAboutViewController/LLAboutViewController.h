//
//  LLAboutViewController.h
//  FDriver
//
//  Created by ZHK on 2020/3/2.
//  Copyright © 2020 ZHK. All rights reserved.
//

#import <QMUIKit/QMUIKit.h>

NS_ASSUME_NONNULL_BEGIN

extern NSString *const kAboutInfoKeyName;
extern NSString *const kAboutInfoKeyDesc;

@interface LLAboutViewController : QMUICommonTableViewController

/// 图标名称
@property (nonatomic, copy, readonly) NSString *logoName;

/// 网址
@property (nonatomic, copy, readonly) NSString *website;

/// 咨询热线
@property (nonatomic, copy, readonly) NSString *serviceHotline;

/// 列表信息
@property (nonatomic, strong) NSArray<NSDictionary *> *infoList;

@end

NS_ASSUME_NONNULL_END
