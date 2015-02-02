//
//  MainViewController.m
//  AsynImageViewAndButtonDemo
//
//  Created by lijinhai on 2/2/15.
//  Copyright (c) 2015 gaussli. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

#pragma mark - 页面生命周期
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initData];
    [self initWidget];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark － 初始化
#pragma mark 初始化控件
- (void) initWidget {
    _button = [[AsynImageButton alloc] initWithFrame:CGRectMake(0, JH_STATUSBAR_HEIGHT, JH_SCREEN_WIDTH/2.0, JH_SCREEN_WIDTH/2.0)];
    [_button initAsynImageWithPlaceholderImage:[UIImage imageNamed:@"default_image"] andImagePath:@"http://c.hiphotos.baidu.com/image/h%3D200/sign=b714c6e5d639b60052ce08b7d9513526/b58f8c5494eef01f98f3ddc3e3fe9925bd317dd5.jpg" andImageLocalPath:[JH_SANDBOX_DOCUMENTS_PATH stringByAppendingPathComponent:@"b58f8c5494eef01f98f3ddc3e3fe9925bd317dd5.jpg"]];
    [self.view addSubview:_button];
    _imageView = [[AsynImageView alloc] initWithFrame:CGRectMake(0, JH_STATUSBAR_HEIGHT+JH_SCREEN_WIDTH/2.0+10, JH_SCREEN_WIDTH/2.0, JH_SCREEN_WIDTH/2.0)];
    [_imageView initAsynImageWithPlaceholderImage:[UIImage imageNamed:@"default_image"] andImagePath:@"http://c.hiphotos.baidu.com/image/h%3D200/sign=946a240fb5003af352badb60052bc619/8d5494eef01f3a298f4c11c89a25bc315c607c34.jpg" andImageLocalPath:[JH_SANDBOX_DOCUMENTS_PATH stringByAppendingPathComponent:@"8d5494eef01f3a298f4c11c89a25bc315c607c34.jpg"]];
    [self.view addSubview:_imageView];
}

#pragma mark 初始化数据
- (void) initData {
    
}

@end
