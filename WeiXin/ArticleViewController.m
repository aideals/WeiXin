//
//  ArticleViewController.m
//  WeiXin
//
//  Created by 鹏 刘 on 2016/11/28.
//  Copyright © 2016年 鹏 刘. All rights reserved.
//

#import "ArticleViewController.h"
#import "MySelectViewController.h"
#import "CarViewController.h"
#import "FoodViewController.h"

@interface ArticleViewController ()
@property (strong, nonatomic) UILabel *label;
@property (strong, nonatomic) UIButton *button;
@end

@implementation ArticleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self articleLabel];
    [self articleButton];
}

- (void)articleLabel
{
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(25, 60, 85, 55)];
    self.label.text = @"精选文章";
    self.label.backgroundColor = [UIColor whiteColor];
    self.label.textColor = [UIColor colorWithRed:0.0 green:0.2 blue:0.1 alpha:0.7];
    [self.view addSubview:self.label];
}

- (void)articleButton
{
    NSArray *buttonArr = [[NSArray alloc] initWithObjects:@"我的精选",@"汽车资讯",@"美食探索", nil];
    for (int i = 0; i < buttonArr.count; i ++) {
        self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        self.button.layer.cornerRadius = 3.5;
        self.button.frame = CGRectMake(50 + i * 100, 120, 80, 30);
        NSString *title = [buttonArr objectAtIndex:i];
        [self.button setTitle:title forState:UIControlStateNormal];
        [self.button addTarget:self action:@selector(goToTheSecondView:) forControlEvents:UIControlEventTouchDown];
        self.button.backgroundColor = [UIColor colorWithRed:0.2 green:0.3 blue:0.3 alpha:0.4];
        [self.view addSubview:self.button];
    }
}

- (IBAction)goToTheSecondView:(UIButton *)sender
{
    if ([sender.titleLabel.text isEqualToString:@"我的精选"]) {
        MySelectViewController *mvc = [[MySelectViewController alloc] init];
        [self.navigationController pushViewController:mvc animated:YES];
    }
    else if ([sender.titleLabel.text isEqualToString:@"汽车资讯"]) {
        CarViewController *car = [[CarViewController alloc] init];
        [self.navigationController pushViewController:car animated:YES];
    }
    else if ([sender.titleLabel.text isEqualToString:@"美食探索"]) {
        FoodViewController *food = [[FoodViewController alloc] init];
        [self.navigationController pushViewController:food animated:YES];
    }

}





@end
