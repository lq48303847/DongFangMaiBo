//
//  HCReminderViewController.m
//  东方脉搏
//
//  Created by Reese on 13-9-24.
//  Copyright (c) 2013年 Reese@objcoder.com. All rights reserved.
//

#import "HCReminderViewController.h"
#import "HCReminderCell.h"

@interface HCReminderViewController ()

@end

@implementation HCReminderViewController

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
    self.title=@"用药提醒";
    [self.navigationController.navigationBar setBackgroundImage:[[UIImage imageNamed:@"pub_topbar_bj"]stretchableImageWithLeftCapWidth:0 topCapHeight:0]     forBarMetrics:UIBarMetricsDefault];
    [_mainTable registerNib:[UINib nibWithNibName:@"HCReminderCell" bundle:Nil] forCellReuseIdentifier:@"ReminderCell"];
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
    static NSString *identifier=@"ReminderCell";
    
    
    HCReminderCell *cell=[tableView dequeueReusableCellWithIdentifier:identifier];
    
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 110;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [tableView deselectRowAtIndexPath:indexPath animated:YES];
}



@end
