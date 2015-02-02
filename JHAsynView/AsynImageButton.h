//
//  AsynImageButton.h
//  Project
//
//  Created by lijinhai on 1/6/15.
//  Copyright (c) 2015 gaussli. All rights reserved.
//

#import <UIKit/UIKit.h>

/*!
 @brief 异步下载图片的Button
 */
@interface AsynImageButton : UIButton
/*!
 @brief 设置异步加载图片
 @params placeholderImage 默认图片
 @params imagePath 图片的URL字符串
 @params imageLocalPath 图片的本地缓存地址字符串
 */
- (void) initAsynImageWithPlaceholderImage: (UIImage*)placeholderImage andImagePath: (NSString*)imagePath andImageLocalPath: (NSString*)imageLocalPath;
@end
