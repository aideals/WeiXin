//
//  AppDelegate.h
//  WeiXin
//
//  Created by 鹏 刘 on 2016/11/27.
//  Copyright © 2016年 鹏 刘. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeiXinViewController.h"
#import "ContactsViewController.h"
#import "DiscoverViewController.h"
#import "MeViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UINavigationController *nav;
@property (strong, nonatomic) UITabBarController *tab;

@end

