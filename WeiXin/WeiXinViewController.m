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

@interface WeiXinViewController ()<UISearchBarDelegate,UISearchDisplayDelegate,UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) UISearchBar *sb;
@property (nonatomic, strong) UISearchDisplayController *searchDisplayController;
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation WeiXinViewController

- (void)viewDidLoad
{
   [super viewDidLoad];
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(add:)];
    self.parentViewController.navigationItem.rightBarButtonItem = rightButton;
    self.parentViewController.navigationItem.title = @"微信";

    self.sb = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 50, self.view.bounds.size.width, 45)];
    self.sb.placeholder = @"搜索";
    self.sb.delegate = self;
    [self.parentViewController.view addSubview:self.sb];
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, self.view.bounds.size.width, self.view.bounds.size.height - 64)];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.tableHeaderView = self.sb;
    [self.parentViewController.view addSubview:self.tableView];
    
    self.searchDisplayController = [[UISearchDisplayController alloc] initWithSearchBar:self.sb contentsController:self];
    self.searchDisplayController.searchResultsDataSource = self;
    self.searchDisplayController.searchResultsDelegate = self;
}

- (IBAction)add:(id)sender
{
    WeiXinTVC *wt = [[WeiXinTVC alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:wt];
    
    [self presentViewController:nav animated:YES completion:nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 0;
}



@end
