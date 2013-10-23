//
//  HCViewController.m
//  东方脉搏
//
//  Created by Reese on 13-9-23.
//  Copyright (c) 2013年 Reese@objcoder.com. All rights reserved.
//

#import "HCViewController.h"

@interface HCViewController ()

@end

@implementation HCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)changeTab:(UIButton*)sender
{
    [_mainTab setSelectedIndex:sender.tag-20000];
    for (int i=20000; i<=20004; i++) {
        UIButton *but=(UIButton*)[_customTab.view viewWithTag:i];
        [but setSelected:but.tag==sender.tag?YES:NO];
    }
    
    [UIView animateWithDuration:0.2f animations:^{
        CGPoint p=_sliderImage.center;
        p.x=sender.center.x;
        [_sliderImage setCenter:p];
    }];
    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqual:@"tabbarSegue"]) {
        _mainTab=segue.destinationViewController;
    }else
    {
        _customTab=segue.destinationViewController;
        _sliderImage=(UIImageView*)[_customTab.view viewWithTag:20010];
    }
}

@end
