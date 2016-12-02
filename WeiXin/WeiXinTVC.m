//
//  WeiXinTVC.m
//  WeiXin
//
//  Created by 鹏 刘 on 2016/11/27.
//  Copyright © 2016年 鹏 刘. All rights reserved.
//

#import "WeiXinTVC.h"

@interface WeiXinTVC ()
@property (nonatomic, copy) NSArray *nameArray;
@end

@implementation WeiXinTVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.nameArray = [[NSArray alloc] initWithObjects:@"发起群聊",@"添加朋友",@"扫一扫",@"收付款", nil];
    
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}


@end
