//
//  PushSearchViewController.m
//  WeiXin
//
//  Created by 鹏 刘 on 2016/11/27.
//  Copyright © 2016年 鹏 刘. All rights reserved.
//

#import "PushSearchViewController.h"

@interface PushSearchViewController ()<UISearchBarDelegate>
@property (strong, nonatomic) UISearchBar *sb;
@property (strong, nonatomic) UIButton *button;
@property (copy, nonatomic) NSArray *buttonTitle;
@end

@implementation PushSearchViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.sb = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 63, self.view.bounds.size.width, 45)];
    self.sb.placeholder = @"搜索";
    self.sb.showsCancelButton = YES;
    self.sb.delegate = self;
    
    
    self.buttonTitle = [[NSArray alloc] initWithObjects:@"朋友圈",@"文章",@"公众号",nil];
    for (int i = 0; i < self.buttonTitle.count; i ++) {
        self.button = [[UIButton alloc] initWithFrame:CGRectMake(125 * i + 20, 175, 95, 45)];
        self.button.backgroundColor = [UIColor blueColor];
        NSString *title = [self.buttonTitle objectAtIndex:i];
        [self.button setTitle:title forState:UIControlStateNormal];
        [self.button addTarget:self action:@selector(theSecond:) forControlEvents:UIControlEventTouchDown];
        [self.view addSubview:self.button];
        
    }
    
    
    [self.view addSubview:self.sb];
}


- (IBAction)theSecond:(id)sender
{
    if ([self.button.titleLabel isEqual:@"朋友圈"]) {
        
    }
}


@end
