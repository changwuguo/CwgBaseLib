//
//  CwgBaseView.m
//  CwgBaseLib
//
//  Created by changwuguo on 2021/2/23.
//

#import "CwgBaseView.h"
#import <Masonry/Masonry.h>
#import <MLLabel/MLLabel.h>
#import <JhtMarquee/JhtVerticalMarquee.h>
#import <SDWebImage/UIImageView+WebCache.h>

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

    UIImageView *imageView = [UIImageView new];
    [aView addSubview: imageView];
    [imageView sd_setImageWithURL: [NSURL URLWithString: @"https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3118529426,2885674921&fm=26&gp=0.jpg"]];
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(aView);
        make.size.mas_equalTo(CGSizeMake(60, 60));
    }];


    MLLabel *label = [MLLabel new];
    label.text = @"字节跳动";
    label.font = [UIFont systemFontOfSize: 10.0];
    label.textColor = [UIColor blackColor];
    [aView addSubview: label];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self);
    }];

    JhtVerticalMarquee *verticalTextCycle = [JhtVerticalMarquee new];
    verticalTextCycle.numberOfLines = 1;
    verticalTextCycle.scrollDelay = 5.0f;
    verticalTextCycle.scrollDuration = 1.0f;
    verticalTextCycle.textColor = [UIColor blackColor];
    verticalTextCycle.textAlignment = NSTextAlignmentLeft;
    verticalTextCycle.textFont = [UIFont systemFontOfSize: 12.0f];
}

@end
