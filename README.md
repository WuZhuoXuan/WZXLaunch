# WZXLaunch
模仿今日头条 启动页广告 一句代码集成。点击广告，广告播放结束。

==============

###特性:

* 1.支持全屏/半屏广告.
* 2.支持静态/动态广告.
* 3.兼容iPhone和iPad.
* 4.支持广告点击事件
* 5.支持设置未检测到广告数据,启动页停留时间

## 效果
###静态广告/动态广告
![image](https://github.com/WuZhuoXuan/AboutlinkageTableview/raw/master/1.gif )  ![image](https://github.com/WuZhuoXuan/AboutlinkageTableview/raw/master/2.gif ) 


```objc
/**
*  WZXLaunchViewController
*
*  @param imageFrame            广告图片的位置
*  @param ImageURL         加载广告的URL 可以是图片 也可以是GIF
*  @param advertisingURL   广告的URL
*  @param timeSecond       广告的时长
*  @param hideSkip         是否隐藏“跳过按钮” YES隐藏  NO显示
*  @param imageLoadGood    广告图片加载完成 回调
*  @param clickImage       点击广告 回调
*  @param theAdEnds         广告播放结束 回调
*
*/
+ (void)showWithFrame:(CGRect)imageFrame ImageURL:(NSString *)ImageURL advertisingURL:(NSString *)advertisingURL timeSecond:(NSInteger)timeSecond hideSkip:(BOOL)hideSkip imageLoadGood:(ImageLoadingGood)imageLoadGood clickImage:(ClickImage)clickImage theAdEnds:(TheAdEnds)theAdEnds;
```

## 使用方法

#### 1.需设置App启动页为LaunchImage

#### 2.需集成SDWebImage

#### 3.在AppDelegate中导入WZXLaunchViewController.h 头文件,在- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions方法中调用下面方法


```objc

///设置启动页
[WZXLaunchViewController showWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-150) ImageURL:@"http://c.hiphotos.baidu.com/image/pic/item/d62a6059252dd42a6a943c180b3b5bb5c8eab8e7.jpg" advertisingURL:@"http://www.jianshu.com/p/7205047eadf7" timeSecond:10 hideSkip:YES imageLoadGood:^(UIImage *image, NSString *imageURL) {
/// 广告加载结束
NSLog(@"%@ %@",image,imageURL);

} clickImage:^(UIViewController *WZXlaunchVC){

/// 点击广告

//2.在webview中打开
HomeWebViewController *VC = [[HomeWebViewController alloc] init];
VC.urlStr = @"http://www.jianshu.com/p/7205047eadf7";
VC.AppDelegateSele= -1;
UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:VC];
[WZXlaunchVC presentViewController:nav animated:YES completion:nil];


} theAdEnds:^{


//广告展示完成回调,设置window根控制器

ViewController *vc = [[ViewController alloc]init];
UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];

self.window.rootViewController = nav;


}];

```




