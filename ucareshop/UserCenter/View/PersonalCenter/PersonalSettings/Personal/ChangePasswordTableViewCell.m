//
//  changePasswordTableViewCell.m
//  ucareshop
//
//  Created by 谢佳培 on 2019/8/26.
//  Copyright © 2019 IOSDeveloper. All rights reserved.
//

// import分组次序：Frameworks、Services、UI
#import "ChangePasswordTableViewCell.h"
#import <Masonry/Masonry.h>

#pragma mark - @class

#pragma mark - 常量

#pragma mark - 枚举

@interface ChangePasswordTableViewCell ()

#pragma mark - 私有属性
@property (nonatomic, readwrite) UILabel *changePasswordLabel;
@end

@implementation ChangePasswordTableViewCell

#pragma mark - Life cycle

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self createSubViews];
        [self createSubViewsConstraints];
    }
    return self;
}

+ (BOOL)requiresConstraintBasedLayout {
    return YES;
}

- (void)dealloc {
    NSLog(@"%@ - dealloc", NSStringFromClass([self class]));
}

#pragma mark - Events

#pragma mark - UIOtherComponentDelegate

#pragma mark - Custom Delegates

#pragma mark - Public Methods

#pragma mark - Private Methods

// 添加子视图
- (void)createSubViews {
    self.changePasswordLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    self.changePasswordLabel.text = @"修改密码";
    self.changePasswordLabel.font = [UIFont systemFontOfSize:18];
    [self.contentView addSubview:self.changePasswordLabel];
}

// 添加约束
- (void)createSubViewsConstraints {
    [self.changePasswordLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.contentView);
        make.left.equalTo(self.contentView).offset(10);
        make.width.equalTo (@150);
        make.height.equalTo(@40);
    }];
}

#pragma mark - Getters and Setters

@end
