//
//  WeiXinViewController.m
//  WeiXin
//
//  Created by 鹏 刘 on 2016/11/27.
//  Copyright © 2016年 鹏 刘. All rights reserved.
//

#import "WeiXinViewController.h"
#import "PushSearchViewController.h"
#import "WeiXinTBC.h"

@interface WeiXinViewController ()<UISearchDisplayDelegate,UITableViewDelegate,UITableViewDataSource,UISearchBarDelegate>
@property (nonatomic, strong) UISearchBar *sb;
@property (nonatomic, strong) UISearchDisplayController *searchDisplayController;
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *tableArr;

@end

@implementation WeiXinViewController

- (void)viewDidLoad
{
   [super viewDidLoad];
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(add:)];
    self.navigationItem.rightBarButtonItem = rightButton;
    self.navigationItem.title = @"微信";

    self.sb = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 63, self.view.bounds.size.width, 45)];
    self.sb.placeholder = @"搜索";
    self.sb.delegate = self;
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    self.tableView.tableHeaderView = self.sb;
    
    self.searchDisplayController = [[UISearchDisplayController alloc] initWithSearchBar:self.sb contentsController:self];
    self.searchDisplayController.searchResultsDataSource = self;
    self.searchDisplayController.searchResultsDelegate = self;
}

- (IBAction)add:(UIBarButtonItem *)sender
{
    WeiXinTBC *weixin;
    NSInteger tag = 15;
    
    if ([self.view viewWithTag:tag] == nil) {
        weixin = [[WeiXinTBC alloc] initWithNibName:nil bundle:nil];
        weixin.view.frame = CGRectMake(250, 70, 120, 175);
        weixin.view.tag = tag;
        [self.view addSubview:weixin.view];
        NSLog(@"%@",self.view);
      
  }
    else {
        id v = [self.view viewWithTag:tag];
        [v removeFromSuperview];
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
   return 0;
}




@end
