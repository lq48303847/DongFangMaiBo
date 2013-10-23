//
//  HCHomeViewController.m
//  东方脉搏
//
//  Created by Reese on 13-9-23.
//  Copyright (c) 2013年 Reese@objcoder.com. All rights reserved.
//

#import "HCHomeViewController.h"

@interface HCHomeViewController ()

@end

@implementation HCHomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.title=@"首页";
    [self.navigationController.navigationBar setBackgroundImage:[[UIImage imageNamed:@"pub_topbar_bj"]stretchableImageWithLeftCapWidth:0 topCapHeight:0]     forBarMetrics:UIBarMetricsDefault];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)homeClick:(UIButton*)sender {
    switch (sender.tag-10000) {
        case 0:{
            //健康档案
            NSLog(@"健康档案");
            [HCHTTP loginUserName:@"asdasd" password:@"asdasd"];
        }
            break;
        case 1:{
            //体验数据
            NSLog(@"体验数据");
        }
            break;
        case 2:{
            //健康风险
            NSLog(@"健康风险");
        }
            break;
        case 3:{
            //健康评估
            NSLog(@"健康评估");
        }
            break;
        case 4:{
            //健康促进
            NSLog(@"健康促进");
        }
            break;
        case 5:{
            //营养指导
            NSLog(@"营养指导");
        }
            break;
        default:
            NSAssert(NO, @"首页按钮错误");
            break;
    }
}
@end
