//
//  AsynImageView.m
//  Project
//
//  Created by lijinhai on 1/6/15.
//  Copyright (c) 2015 gaussli. All rights reserved.
//

#import "AsynImageView.h"
#import "ASIHTTPRequest.h"
#import "JHMacroDefinition.h"

@implementation AsynImageView

// 设置异步加载图片
- (void) initAsynImageWithPlaceholderImage: (UIImage*)placeholderImage andImagePath: (NSString*)imagePath andImageLocalPath: (NSString*)imageLocalPath {
    // 设置默认图片
    if (placeholderImage != nil) {
        self.image = placeholderImage;
    }
    // 异步下载图片
    if (imagePath == nil || imageLocalPath == nil) {
        return ;
    }
    if ([JH_FILE_MANAGER fileExistsAtPath:imageLocalPath]) {
        self.image = [UIImage imageWithContentsOfFile:imageLocalPath];
    }
    else {
        // 本地没有图片，从服务器上获取，缓存在imageLocalPath中
        __weak ASIHTTPRequest * request = [ASIHTTPRequest requestWithURL:[NSURL URLWithString:imagePath]];
        [request setDownloadDestinationPath:imageLocalPath];
        [request setCompletionBlock:^{
            // 缓存成功后，直接取出来使用展示
            self.image = [UIImage imageWithContentsOfFile:imageLocalPath];
        }];
        [request setFailedBlock:^{
            NSLog(@"获取ImageView图像失败了");
        }];
        [request startAsynchronous];
    }
}

@end
