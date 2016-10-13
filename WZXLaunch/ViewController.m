//
//  ViewController.m
//  WZXLaunch
//
//  Created by DHSoft on 16/10/12.
//  Copyright © 2016年 WZX. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WKWebView.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"首页";
    self.view.backgroundColor = [UIColor whiteColor];
    WKWebView *webView = [[WKWebView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    [self.view addSubview:webView];
    
    
    NSURL *url = [NSURL URLWithString:@"https://github.com/WuZhuoXuan"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [webView loadRequest:request];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
