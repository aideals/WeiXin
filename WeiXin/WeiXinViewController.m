//
//  WeiXinViewController.m
//  WeiXin
//
//  Created by 鹏 刘 on 2016/11/27.
//  Copyright © 2016年 鹏 刘. All rights reserved.
//

#import "WeiXinViewController.h"

@interface WeiXinViewController ()<UISearchBarDelegate,UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UISearchBar *sb;
@property (nonatomic,strong) UITableView *tv;

@end

@implementation WeiXinViewController

- (void)viewDidLoad
{
   [super viewDidLoad];
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(add:)];
    self.navigationItem.rightBarButtonItem = rightButton;

}



@end
