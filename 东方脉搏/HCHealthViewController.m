//
//  HCHealthViewController.m
//  东方脉搏
//
//  Created by Reese on 13-9-23.
//  Copyright (c) 2013年 Reese@objcoder.com. All rights reserved.
//

#import "HCHealthViewController.h"

@interface HCHealthViewController ()

@end

@implementation HCHealthViewController

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
    self.title=@"健康信息";
    [self.navigationController.navigationBar setBackgroundImage:[[UIImage imageNamed:@"pub_topbar_bj"]stretchableImageWithLeftCapWidth:0 topCapHeight:0]     forBarMetrics:UIBarMetricsDefault];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 10;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier=@"HealthCell";
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    [cell.textLabel setText:@"呵呵呵"];
    return cell;
}

@end
