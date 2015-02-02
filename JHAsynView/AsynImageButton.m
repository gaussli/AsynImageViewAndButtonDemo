//
//  AsynImageButton.m
//  Project
//
//  Created by lijinhai on 1/6/15.
//  Copyright (c) 2015 gaussli. All rights reserved.
//

#import "AsynImageButton.h"
//#import "ASIHTTPRequest.h"
#import "ASIFormDataRequest.h"
#import "JHMacroDefinition.h"

@implementation AsynImageButton

// 设置异步加载图片
- (void) initAsynImageWithPlaceholderImage: (UIImage*)placeholderImage andImagePath: (NSString*)imagePath andImageLocalPath: (NSString*)imageLocalPath {
    // 设置默认图片
    if (placeholderImage != nil) {
        [self setImage:placeholderImage forState:UIControlStateNormal];
    }
    // 异步下载图片
    if (imagePath == nil || imageLocalPath == nil) {
        return ;
    }
    if ([JH_FILE_MANAGER fileExistsAtPath:imageLocalPath]) {
        // 本地已缓存了图片，直接使用
        [self setImage:[UIImage imageWithContentsOfFile:imageLocalPath] forState:UIControlStateNormal];
    }
    else {
        // 本地没有图片，从服务器上获取，缓存在imageLocalPath中
        __weak ASIHTTPRequest * request = [ASIHTTPRequest requestWithURL:[NSURL URLWithString:imagePath]];
        [request setDownloadDestinationPath:imageLocalPath];
        [request setCompletionBlock:^{
            // 缓存成功后，直接取出来使用展示
            [self setImage:[UIImage imageWithContentsOfFile:imageLocalPath] forState:UIControlStateNormal];
        }];
        [request setFailedBlock:^{
            NSLog(@"获取按钮图像失败了～: %@", imagePath);
        }];
        [request startAsynchronous];
    }
}

@end
