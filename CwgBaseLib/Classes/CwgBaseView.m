//
//  CwgBaseView.m
//  CwgBaseLib
//
//  Created by changwuguo on 2021/2/23.
//

#import "CwgBaseView.h"
#import <Masonry/Masonry.h>
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
    imageView.clipsToBounds = YES;
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    [imageView sd_setImageWithURL: [NSURL URLWithString: @"https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2340886709,253774581&fm=26&gp=0.jpg"]];
    [aView addSubview: imageView];
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(aView);
        make.size.mas_equalTo(CGSizeMake(50, 50));
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
