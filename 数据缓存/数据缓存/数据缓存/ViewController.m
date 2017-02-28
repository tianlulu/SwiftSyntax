//
//  ViewController.m
//  数据缓存
//
//  Created by lushuishasha on 16/6/2.
//  Copyright © 2016年 lushuishasha. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
/*
//默认的缓存策略，使用Protocal协议定义
NSURLRequestUseProtocolCachePolicy = 0,

//忽略缓存直接从原始地址下载
NSURLRequestReloadIgnoringLocalCacheData = 1,

//有缓存时使用缓存没缓存时直接从原始地址下载
NSURLRequestReturnCacheDataElseLoad = 2,

//有缓存时使用缓存，没有缓存时请求失败：用于没有建立网络链接的离线模式
NSURLRequestReturnCacheDataDontLoad = 3,

//验证本地数据与远程数据是否相同，如果不同则下载远程数据，否则使用本地数据
NSURLRequestReloadRevalidatingCacheData = 5, // Unimplemented
*/






- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSURL *url = [NSURL URLWithString:@"http://developer.favourfree.com/index.php/DriverApp_v1_0_0/DriverInfo/ProvinceCity"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    
    //设置缓存策略
   // [request setCachePolicy:NSURLRequestReturnCacheDataDontLoad];
     request.cachePolicy = NSURLRequestReturnCacheDataElseLoad;
    
    //发送请求
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse * _Nullable response, NSData * _Nullable data, NSError * _Nullable connectionError) {
        if (data) {
            NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
            NSLog(@"dic:%@",dic);
        }
    }];
    
    
    //获得全局的缓存对象
    NSURLCache *cache = [NSURLCache sharedURLCache];
//    if (这个缓存达到3天) {
//        //清理这个请求的缓存
//        [cache removeCachedResponseForRequest:request];
//    }
    
    
   //查看该请求是否已经存在缓存
    NSCachedURLResponse *response = [cache cachedResponseForRequest:request];
    if (response) {
        NSLog(@"这个请求已经存在缓存");
    }else{
        NSLog(@"这个请求还没有缓存");
    }
    
}
@end
