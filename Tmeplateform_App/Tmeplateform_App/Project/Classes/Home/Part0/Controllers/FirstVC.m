//
//  FirstVC.m
//  Tmeplateform_App
//
//  Created by MrYeL on 2019/1/17.
//  Copyright © 2019 MrYeL. All rights reserved.
//

#import "FirstVC.h"
#import "XHLabel.h"

@interface FirstVC ()

@end

@implementation FirstVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    XHLabel *label  = [[XHLabel alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, 100)];
    label.textColor = [UIColor cyanColor];
    label.font = [UIFont systemFontOfSize:32];
    label.text = @"测试一下看看";
    self.tableView.tableHeaderView = label;

    //发光
    [label setTextShadowWithColor:[UIColor redColor] shadowRadius:2 shadowOffset:CGSizeMake(0, 0) andShadowOpacity:1.0];

    
    [self.viewModel addDatasFromArray:@[@"1",@"2",@"3"] atSection:0];
    
    [self.viewModel addDatasFromArray:@[@"4",@"5",@"1"] atSection:1];

}

@end
