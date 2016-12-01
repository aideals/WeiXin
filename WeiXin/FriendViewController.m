//
//  FriendViewController.m
//  WeiXin
//
//  Created by 鹏 刘 on 2016/11/27.
//  Copyright © 2016年 鹏 刘. All rights reserved.
//

#import "FriendViewController.h"
#import "ChoiceViewController.h"
#import "MusicViewController.h"

@interface FriendViewController ()
@property (strong, nonatomic) UIButton *button;
@property (copy, nonatomic) NSArray *titleArr;
@end

@implementation FriendViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self friendButton];
}

- (void)friendButton
{
    NSString *title;
    self.titleArr = [[NSArray alloc] initWithObjects:@"一周朋友精选",@"朋友分享的音乐", nil];
    for (int i = 0; i < self.titleArr.count; i ++) {
        self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        self.button.layer.cornerRadius = 4.0;
        self.button.frame = CGRectMake(30 + i * 185, 125, 120, 30);
        self.button.backgroundColor = [UIColor colorWithRed:0.9 green:1.5 blue:2.9 alpha:1.0];
        title = [self.titleArr objectAtIndex:i];
        [self.button setTitle:title forState:UIControlStateNormal];
        [self.button addTarget:self action:@selector(goToTheSecondView:) forControlEvents:UIControlEventTouchDown];
        self.button.tag = 100 + i * i;
        [self.view addSubview:self.button];
        
    }
}

- (IBAction)goToTheSecondView:(UIButton *)sender
{
    if ([sender.titleLabel.text isEqualToString:@"一周朋友精选"]) {
        ChoiceViewController *cvc = [[ChoiceViewController alloc] initWithNibName:nil bundle:nil];
        [self.navigationController pushViewController:cvc animated:YES];
    }
    else if ([sender.titleLabel.text isEqualToString:@"朋友分享的音乐"]) {
        MusicViewController *mvc = [[MusicViewController alloc] initWithNibName:nil bundle:nil];
        [self.navigationController pushViewController:mvc animated:YES];
    }


}




@end
