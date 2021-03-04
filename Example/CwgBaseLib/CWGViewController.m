//
//  CWGViewController.m
//  CwgBaseLib
//
//  Created by changwuguo@qq.com on 02/21/2021.
//  Copyright (c) 2021 changwuguo@qq.com. All rights reserved.
//

#import <Masonry/Masonry.h>
#import "CWGViewController.h"
#import <CwgBaseLib/CwgBaseView.h>

@interface CWGViewController ()

@end

@implementation CWGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    CwgBaseView *view = [CwgBaseView new];
    view.backgroundColor = [UIColor redColor];
    [view createBaseView];
    [self.view addSubview: view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(200, 200));
    }];
}

@end
