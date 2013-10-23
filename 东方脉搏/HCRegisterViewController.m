//
//  HCRegisterViewController.m
//  东方脉搏
//
//  Created by Reese on 13-10-19.
//  Copyright (c) 2013年 Reese@objcoder.com. All rights reserved.
//

#import "HCRegisterViewController.h"

@interface HCRegisterViewController ()

@end

@implementation HCRegisterViewController

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
    self.title=@"注册";
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    [self.navigationController.navigationBar setBackgroundImage:[[UIImage imageNamed:@"pub_topbar_bj"]stretchableImageWithLeftCapWidth:0 topCapHeight:0]     forBarMetrics:UIBarMetricsDefault];
     //Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    UIButton *backButton=[[UIButton alloc]initWithFrame:CGRectMake(0, 0, 60, 45)];
    [backButton setTitle:@"返回" forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(navBack:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *item=[[UIBarButtonItem alloc]initWithCustomView:backButton];
     self.navigationItem.leftBarButtonItem = item;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)navBack:(id)sender
{
    [self.navigationController dismissViewControllerAnimated:YES completion:Nil];
}


/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
