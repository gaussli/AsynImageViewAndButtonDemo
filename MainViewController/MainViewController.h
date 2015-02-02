//
//  MainViewController.h
//  AsynImageViewAndButtonDemo
//
//  Created by lijinhai on 2/2/15.
//  Copyright (c) 2015 gaussli. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JHMacroDefinition.h"
#import "AsynImageButton.h"
#import "AsynImageView.h"

@interface MainViewController : UIViewController
@property (nonatomic, strong) AsynImageButton *button;
@property (nonatomic, strong) AsynImageView *imageView;
@end
