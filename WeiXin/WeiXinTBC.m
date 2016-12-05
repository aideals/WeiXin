//
//  WeiXinTBC.m
//  WeiXin
//
//  Created by 鹏 刘 on 2016/12/3.
//  Copyright © 2016年 鹏 刘. All rights reserved.
//

#import "WeiXinTBC.h"

@interface WeiXinTBC ()
@property (nonatomic, copy) NSArray *data;
@end

@implementation WeiXinTBC

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.data = [[NSArray alloc] initWithObjects:@"发起群聊",@"添加朋友",@"扫一扫",@"收付款", nil];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return [self.data count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"reuse";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        cell.textLabel.text = self.data[indexPath.row];
    }
    
    return cell;
}



@end
