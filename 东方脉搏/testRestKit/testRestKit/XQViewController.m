//
//  XQViewController.m
//  testRestKit
//
//  Created by TY on 13-10-23.
//  Copyright (c) 2013年 xq. All rights reserved.
//

#import "XQViewController.h"
#import <RestKit/RestKit.h>

@interface XQViewController ()

@end

@implementation XQViewController

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


- (IBAction)clik:(id)sender {
    NSLog(@"sdas");
}
- (void)sendRequest {
    // Send an HTTP GET request to 'http://restkit.org/contacts' 发送一个get请求，完整的请求路径是“http://restkit.org/contacts”
    [[RKClient sharedClient] get:@"/contacts" delegate:self];
    
}
// RKRequestDelegate methods代理方法
- (void)request:(RKRequest *)request didLoadResponse:(RKResponse *)response {// 成功
    RKLogInfo(@"Yay! We Got a response");
}
- (void)request:(RKRequest*)request didFailLoadWithError:(NSError *)error { // 失败
    RKLogInfo(@"Oh no! We encountered an error: %@", [error localizedDescription]);
}
@end
