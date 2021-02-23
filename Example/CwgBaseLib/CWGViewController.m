//
//  CWGViewController.m
//  CwgBaseLib
//
//  Created by changwuguo@qq.com on 02/21/2021.
//  Copyright (c) 2021 changwuguo@qq.com. All rights reserved.
//

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
    view.frame = CGRectMake(100, 100, 150, 150);
    [self.view addSubview: view];

    [view createBaseView];
}

@end
