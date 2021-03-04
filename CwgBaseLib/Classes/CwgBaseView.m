//
//  CwgBaseView.m
//  CwgBaseLib
//
//  Created by changwuguo on 2021/2/23.
//

#import "CwgBaseView.h"
#import "PictureView.h"
#import <Masonry/Masonry.h>

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
        make.size.mas_equalTo(CGSizeMake(190, 190));
    }];

    NSURL *url = [[NSBundle mainBundle] URLForResource: @"CwgBaseLib" withExtension:@"bundle"];
    NSBundle *bundle = [NSBundle bundleWithURL: url];
    PictureView *pictureView = [[bundle loadNibNamed: @"PictureView" owner: self options: nil] lastObject];
    pictureView.imageView.image = [UIImage imageNamed: @"1.jpeg" inBundle: bundle compatibleWithTraitCollection: nil];
    [self addSubview: pictureView];
    [pictureView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(aView);
        make.size.mas_equalTo(CGSizeMake(178, 100));
    }];
}

@end
