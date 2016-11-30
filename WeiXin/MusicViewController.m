//
//  MusicViewController.m
//  WeiXin
//
//  Created by 鹏 刘 on 2016/11/29.
//  Copyright © 2016年 鹏 刘. All rights reserved.
//

#import "MusicViewController.h"

@interface MusicViewController ()<UIWebViewDelegate>
@property (strong, nonatomic) UIWebView *web;
@property (strong, nonatomic) UIActivityIndicatorView *activityIndicator;
@end

@implementation MusicViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self musicWeb];
    [self musicActivityIndicator];
}

- (void)musicWeb
{
    self.web = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:@"http://www.yinyuetai.com"]];
    [self.web loadRequest:request];
    [self.view addSubview:self.web];
}

- (void)musicActivityIndicator
{
    self.activityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    self.activityIndicator.center = CGPointMake(100.0, 100.0);
    self.activityIndicator.hidesWhenStopped = YES;
    [self.view addSubview:self.activityIndicator];
    
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    [self.activityIndicator startAnimating];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [self.activityIndicator stopAnimating];
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    [self.activityIndicator stopAnimating];
}

@end
