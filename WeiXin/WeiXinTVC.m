//
//  WeiXinTVC.m
//  WeiXin
//
//  Created by 鹏 刘 on 2016/11/27.
//  Copyright © 2016年 鹏 刘. All rights reserved.
//

#import "WeiXinTVC.h"

@interface WeiXinTVC ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, copy) NSArray *nameArray;
@end

@implementation WeiXinTVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.nameArray = [[NSArray alloc] initWithObjects:@"发起群聊",@"添加朋友",@"扫一扫",@"收付款", nil];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.frame = CGRectMake(200, 60, 90, 100);
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return [self.nameArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"cellReuse";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }

    cell.textLabel.text = self.nameArray[indexPath.row];
    return cell;

}



@end
