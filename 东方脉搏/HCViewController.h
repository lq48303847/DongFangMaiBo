//
//  HCViewController.h
//  东方脉搏
//
//  Created by Reese on 13-9-23.
//  Copyright (c) 2013年 Reese@objcoder.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HCTabViewController.h"

@interface HCViewController : UIViewController
{
    UITabBarController *_mainTab;
    HCTabViewController *_customTab;
    UIImageView *_sliderImage;
}

@end
