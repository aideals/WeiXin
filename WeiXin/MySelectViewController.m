//
//  MySelectViewController.m
//  WeiXin
//
//  Created by 鹏 刘 on 2016/11/29.
//  Copyright © 2016年 鹏 刘. All rights reserved.
//

#import "MySelectViewController.h"

@interface MySelectViewController ()<UIWebViewDelegate>
@property (strong, nonatomic) UIWebView *web;
@property (strong, nonatomic) UIActivityIndicatorView *activity;
@end

@implementation MySelectViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self selectWeb];
    [self selectActivity];
}

- (void)selectWeb
{
    self.web = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:@"http://www.baidu.com"]];
    [self.web loadRequest:request];
    [self.view addSubview:self.web];
}

- (void)selectActivity
{
    self.activity = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    [self.activity setCenter:self.view.center];
    self.activity.backgroundColor = [UIColor grayColor];
    self.activity.frame = CGRectMake(0, 0, 32.0f, 32.0f);
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
