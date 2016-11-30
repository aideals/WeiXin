//
//  FoodViewController.m
//  WeiXin
//
//  Created by 鹏 刘 on 2016/11/29.
//  Copyright © 2016年 鹏 刘. All rights reserved.
//

#import "FoodViewController.h"

@interface FoodViewController ()<UIWebViewDelegate>
@property (strong, nonatomic) UIWebView *web;
@property (strong, nonatomic) UIActivityIndicatorView *activity;
@end

@implementation FoodViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self foodWeb];
    [self foodActivity];
}

- (void)foodWeb
{
    self.web = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:@"http://www.163.com"]];
    [self.web loadRequest:request];
    [self.view addSubview:self.web];
}

- (void)foodActivity
{
    self.activity = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    self.activity.frame = CGRectMake(0, 0, 32.0f, 32.0f);
    [self.activity setCenter:self.view.center];
    self.activity.backgroundColor = [UIColor whiteColor];
    self.activity.hidesWhenStopped = YES;
    [self.view addSubview:self.activity];
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    [self.activity startAnimating];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [self.activity stopAnimating];
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    [self.activity stopAnimating];
}

@end
