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

    NSBundle *currentBundle = [NSBundle bundleForClass: [PictureView class]];
    PictureView *pictureView = [[currentBundle loadNibNamed: @"PictureView" owner: self options: nil] lastObject];
    pictureView.imageView.image = [UIImage imageNamed: @"1.jpeg"];
    [self addSubview: pictureView];
    [pictureView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(aView);
        make.size.mas_equalTo(CGSizeMake(178, 100));
    }];
}

@end
