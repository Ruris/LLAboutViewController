//
//  LLAboutViewController.m
//  FDriver
//
//  Created by ZHK on 2020/3/2.
//  Copyright © 2020 ZHK. All rights reserved.
//

#import "LLAboutViewController.h"
#import "LLAboutHeaderView.h"
#import "LLAboutListViewCell.h"

NSString *const kAboutInfoKeyName = @"name";
NSString *const kAboutInfoKeyDesc = @"desc";

@interface LLAboutViewController ()

@property (nonatomic, strong) LLAboutHeaderView *headView;

@end

@implementation LLAboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}

#pragma mark - UI

- (void)setupUI {
    self.title = @"关于我们";
    self.tableView.tableHeaderView = self.headView;
    self.tableView.scrollEnabled = NO;
    [self.tableView registerClass:[LLAboutListViewCell class] forCellReuseIdentifier:LLAboutListViewCell_IDFR];
}

#pragma mark - UITableView dataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.infoList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    LLAboutListViewCell *cell = [tableView dequeueReusableCellWithIdentifier:LLAboutListViewCell_IDFR];
    cell.textLabel.text = _infoList[indexPath.row][kAboutInfoKeyName];
    cell.detailTextLabel.text = _infoList[indexPath.row][kAboutInfoKeyDesc];
    return cell;
}

#pragma mark - UITableView delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    NSURL *URL = nil;
    if (indexPath.row == 0) {
        // 门户网站
        URL = [NSURL URLWithString:self.website];
    } else if (indexPath.row == 1) {
        // 拨打电话
        URL = [NSURL URLWithString:[NSString stringWithFormat:@"tel://%@", self.serviceHotline]];
    } else {}
    if (URL) {
        if (@available(iOS 10.0, *)) {
            [[UIApplication sharedApplication] openURL:URL options:@{} completionHandler:nil];
        } else {
            // Fallback on earlier versions
        }
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50.0f * (UIScreen.mainScreen.bounds.size.width / 414.0);
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return CGFLOAT_MIN;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return CGFLOAT_MIN;
}

- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    return nil;
}

- (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    return nil;
}

#pragma mark - UI Configuration

- (UITableViewStyle)style {
    return UITableViewStyleGrouped;
}

#pragma mark - Getter

- (NSString *)logoName { return @""; }

- (NSString *)serviceHotline { return @""; }

- (NSString *)website { return @""; }

- (LLAboutHeaderView *)headView {
    if (_headView == nil) {
        CGFloat width = CGRectGetWidth(UIScreen.mainScreen.bounds);
        self.headView = [[LLAboutHeaderView alloc] initWithFrame:CGRectMake(0, 0, width, width * 0.5f)];
        _headView.logoName = self.logoName;
        _headView.appName  = [NSBundle mainBundle].infoDictionary[@"CFBundleDisplayName"];
    }
    return _headView;
}

- (NSArray<NSDictionary *> *)infoList {
    if (_infoList == nil) {
        self.infoList = @[@{kAboutInfoKeyName : @"网站地址",
                            kAboutInfoKeyDesc : self.website ?: @""
                            },
                          @{kAboutInfoKeyName : @"服务热线",
                            kAboutInfoKeyDesc : self.serviceHotline ?: @""
                            },
        ];
    }
    return _infoList;
}

@end
