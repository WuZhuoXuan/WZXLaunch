//
//  HomeWebViewController.h
//  MyHome
//
//  Created by DHSoft on 16/8/31.
//  Copyright © 2016年 DHSoft. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^WebBack)();

@interface HomeWebViewController : UIViewController

@property (nonatomic,copy)NSString *urlStr;

@property (nonatomic,assign)int AppDelegateSele;

@property (nonatomic,copy) WebBack WebBack;

@end
