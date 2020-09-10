//
//  LLAboutListViewCell.m
//  FDriver
//
//  Created by ZHK on 2020/3/2.
//  Copyright © 2020 ZHK. All rights reserved.
//

#import "LLAboutListViewCell.h"

NSString * const LLAboutListViewCell_IDFR = @"LLAboutListViewCell_IDFR";

@interface LLAboutListViewCell ()

@end

@implementation LLAboutListViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:self.style reuseIdentifier:reuseIdentifier]) {
        
    }
    return self;
}

- (void)didInitializeWithStyle:(UITableViewCellStyle)style {
    [super didInitializeWithStyle:style];
    [self setupUI];
}

- (UITableViewCellStyle)style {
    return UITableViewCellStyleValue1;
}

#pragma mark - UI

- (void)setupUI {
    self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    self.textLabel.textColor = UIColor.grayColor;
    self.detailTextLabel.textColor = UIColor.lightGrayColor;
    
}


@end
