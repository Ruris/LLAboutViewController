//
//  LLAboutViewController.h
//  FDriver
//
//  Created by ZHK on 2020/3/2.
//  Copyright © 2020 ZHK. All rights reserved.
//

#import <QMUIKit/QMUIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LLAboutViewController : QMUICommonTableViewController

/// 图标名称
@property (nonatomic, copy, readonly) NSString *logoName;

/// 网址
@property (nonatomic, copy, readonly) NSString *website;

/// 咨询热线
@property (nonatomic, copy, readonly) NSString *serviceHotline;

@end

NS_ASSUME_NONNULL_END
