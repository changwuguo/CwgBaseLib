//
//  CwgBaseView.m
//  CwgBaseLib
//
//  Created by changwuguo on 2021/2/23.
//

#import "CwgBaseView.h"
#import <Masonry/Masonry.h>
//#import <MLLabel/MLLabel.h>
//#import <JhtMarquee/JhtVerticalMarquee.h>

@interface CwgBaseView ()

@end

@implementation CwgBaseView

- (void)createBaseView
{
    UIView *aView = [UIView new];
    aView.backgroundColor = [UIColor greenColor];
    [self addSubview: aView];
    [aView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self);
        make.size.mas_equalTo(CGSizeMake(80, 80));
    }];

//    MLLabel *label = [MLLabel new];
//    label.text = @"字节跳动";
//    label.font = [UIFont systemFontOfSize: 8.0];
//    label.textColor = [UIColor blackColor];
//    [aView addSubview: label];
//    [label mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.center.mas_equalTo(self);
//    }];

//    JhtVerticalMarquee *verticalTextCycle = [JhtVerticalMarquee new];
//    verticalTextCycle.numberOfLines = 1;
//    verticalTextCycle.scrollDelay = 5.0f;
//    verticalTextCycle.scrollDuration = 1.0f;
//    verticalTextCycle.textColor = [UIColor blackColor];
//    verticalTextCycle.textAlignment = NSTextAlignmentLeft;
//    verticalTextCycle.textFont = [UIFont systemFontOfSize: 12.0f];
}

@end
