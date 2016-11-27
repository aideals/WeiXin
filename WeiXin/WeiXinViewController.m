//
//  WeiXinViewController.m
//  WeiXin
//
//  Created by 鹏 刘 on 2016/11/27.
//  Copyright © 2016年 鹏 刘. All rights reserved.
//

#import "WeiXinViewController.h"
#import "WeiXinTVC.h"
#import "PushSearchViewController.h"

@interface WeiXinViewController ()<UISearchBarDelegate,UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UISearchBar *sb;
@property (nonatomic,strong) UITableView *tv;

@end

@implementation WeiXinViewController

- (void)viewDidLoad
{
   [super viewDidLoad];
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(add:)];
    self.parentViewController.navigationItem.rightBarButtonItem = rightButton;
    self.parentViewController.navigationItem.title = @"微信";

    self.sb = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 63, self.view.bounds.size.width, 45)];
    self.sb.placeholder = @"搜索";
    self.sb.delegate = self;
    
    [self.parentViewController.view addSubview:self.sb];
}

- (IBAction)add:(id)sender
{
    WeiXinTVC *wt = [[WeiXinTVC alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:wt];
    
    [self presentViewController:nav animated:YES completion:nil];
}

- (BOOL)searchBarShouldBeginEditing:(UISearchBar *)searchBar
{
    [self.sb resignFirstResponder];
    PushSearchViewController *psvc = [[PushSearchViewController alloc] initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:psvc animated:YES];
    
    return NO;
}


@end
