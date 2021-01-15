//
//  FirstVC.m
//  Tmeplateform_App
//
//  Created by MrYeL on 2019/1/17.
//  Copyright © 2019 MrYeL. All rights reserved.
//

#import "FirstVC.h"
#import "XHLabel.h"
#import <OpenShareHeader.h>

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
    [self.viewModel addDatasFromArray:@[@"微博分享",@"QQ分享",@"微信分享",@"微信朋友圈"] atSection:0];
    [self.viewModel addDatasFromArray:@[@"4",@"5",@"1"] atSection:1];
    ShowMessage(@"haha");
    self.tableView.frame = self.view.frame;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    ShowMessage([self.viewModel objectAtIndex:indexPath.row section:indexPath.section]);
    
    OSMessage *msg = [[OSMessage alloc]init];
    msg.title=@"Renren msg.title. hello openshare";
    msg.link=@"http://www.baidu.com/";
    msg.desc=@"this is msg.description";
    
    if (indexPath.section == 0) {
        switch (indexPath.row) {
            case 0://weibo
                [OpenShare shareToWeibo:msg Success:^(OSMessage *message) {
                    NSLog(@"分享到sina微博成功:\%@",message);
                } Fail:^(OSMessage *message, NSError *error) {
                    NSLog(@"分享到sina微博失败:\%@\n%@",message,error);
                }];
                break;
            case 1://qq
            {
                [OpenShare shareToQQFriends:msg Success:^(OSMessage *message) {
                    NSLog(@"分享到QQ好友成功:%@",msg);
                } Fail:^(OSMessage *message, NSError *error) {
                    NSLog(@"分享到QQ好友失败:%@\n%@",msg,error);
                }];
            }
                break;
            case 2://weixin
            {
                [OpenShare shareToWeixinSession:msg Success:^(OSMessage *message) {
                    NSLog(@"微信分享到会话成功：\n%@",message);
                } Fail:^(OSMessage *message, NSError *error) {
                    NSLog(@"微信分享到会话失败：\n%@\n%@",error,message);
                }];
            }
                break;
            case 3://pyq
            {
                [OpenShare shareToWeixinTimeline:msg Success:^(OSMessage *message) {
                    NSLog(@"微信分享到朋友圈成功：\n%@",message);
                } Fail:^(OSMessage *message, NSError *error) {
                    NSLog(@"微信分享到朋友圈失败：\n%@\n%@",error,message);
                }];
            }
                break;
                
            default:
                break;
        }
    }
   
    
}

@end
