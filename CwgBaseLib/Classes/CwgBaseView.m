//
//  CwgBaseView.m
//  CwgBaseLib
//
//  Created by changwuguo on 2021/2/23.
//

#import "CwgBaseView.h"
#import <Masonry/Masonry.h>

@interface CwgBaseView ()

@property (nonatomic, strong) UIView *aView;

@end

@implementation CwgBaseView

- (void)createBaseView
{
    self.aView = [UIView new];
    self.aView.backgroundColor = [UIColor greenColor];
    [self addSubview: self.aView];
    
    [self.aView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self);
        make.size.mas_equalTo(CGSizeMake(80, 80));
    }];
}

@end
