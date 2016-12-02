//
//  PushSearchViewController.m
//  WeiXin
//
//  Created by 鹏 刘 on 2016/11/27.
//  Copyright © 2016年 鹏 刘. All rights reserved.
//

#import "PushSearchViewController.h"
#import "FriendViewController.h"
#import "ArticleViewController.h"
#import "PublicViewController.h"

@interface PushSearchViewController ()<UISearchBarDelegate>

@property (strong, nonatomic) UISearchBar *sb;
@property (strong, nonatomic) UIButton *button;
@property (copy, nonatomic) NSArray *buttonTitle;
@end

@implementation PushSearchViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self pushSearch];
    [self buttonArray];
 
}

- (void)pushSearch
{
    self.sb = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 60, self.view.bounds.size.width, 55)];
    self.sb.placeholder = @"搜索";
    self.sb.delegate = self;
    
    
    /*for (UIView *view in [[[self.sb subviews] objectAtIndex:0] subviews]) {
        if ([view isKindOfClass:[NSClassFromString(@"UINavigationButton") class]]) {
            UIButton *cancel = (UIButton *)view;
            [cancel setTitle:@"取消" forState:UIControlStateNormal];
            [cancel addTarget:self action:@selector(dimissTheView:) forControlEvents:UIControlEventTouchDown];
        }
    }*/
    
}

- (void)buttonArray
{
    self.buttonTitle = [[NSArray alloc] initWithObjects:@"朋友圈",@"文章",@"公众号",nil];
    for (int i = 0; i < self.buttonTitle.count; i ++) {
        self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        self.button.layer.cornerRadius = 3.5;
        self.button.frame = CGRectMake(125 * i + 20, 175, 95, 45);
        self.button.backgroundColor = [UIColor blueColor];
        NSString *title = [self.buttonTitle objectAtIndex:i];
        [self.button setTitle:title forState:UIControlStateNormal];
        [self.button addTarget:self action:@selector(theSecond:) forControlEvents:UIControlEventTouchDown];
        self.button.tag = 60 + 1 * i;
        [self.view addSubview:self.button];
        
    }
}

- (IBAction)theSecond:(UIButton *)sender
{
    if ([sender.titleLabel.text isEqualToString:@"朋友圈"]) {
        FriendViewController *fvc = [[FriendViewController alloc] initWithNibName:nil bundle:nil];
        //fvc.sb.placeholder = @"搜索朋友圈"; 值没传过去
        [self.navigationController pushViewController:fvc animated:YES];
        
    }
    else if ([sender.titleLabel.text isEqualToString:@"文章"]) {
        ArticleViewController *avc = [[ArticleViewController alloc] initWithNibName:nil bundle:nil];
        [self.navigationController pushViewController:avc animated:YES];
    }
    else if ([sender.titleLabel.text isEqualToString:@"公众号"]) {
        PublicViewController *pvc = [[PublicViewController alloc] initWithNibName:nil bundle:nil];
        [self.navigationController pushViewController:pvc animated:YES];
    }

}

- (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar
{
    
    
}

- (IBAction)dimissTheView:(id)sender
{
    
}

@end
