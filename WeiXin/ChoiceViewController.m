//
//  ChoiceViewController.m
//  WeiXin
//
//  Created by 鹏 刘 on 2016/11/29.
//  Copyright © 2016年 鹏 刘. All rights reserved.
//

#import "ChoiceViewController.h"

@interface ChoiceViewController ()<UIWebViewDelegate>
@property (strong, nonatomic) UIWebView *web;
@property (strong, nonatomic) UIActivityIndicatorView *activity;
@end

@implementation ChoiceViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self choiceWeb];
}

- (void)choiceWeb
{
    self.web = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.163.com"]];
    [self.web loadRequest:request];
    self.web.delegate = self;
    [self.view addSubview:self.web];
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    self.activity = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(0, 0, 32.0f, 32.0f)];
    [self.activity setCenter:self.view.center];
    self.activity.backgroundColor = [UIColor grayColor];
    self.activity.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
  
    [self.activity startAnimating];
    [self.view addSubview:self.activity];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [self.activity stopAnimating];
    self.activity.hidesWhenStopped = YES;
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    [self.activity stopAnimating];
}


@end
