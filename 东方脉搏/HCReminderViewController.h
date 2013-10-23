//
//  HCReminderViewController.h
//  东方脉搏
//
//  Created by Reese on 13-9-24.
//  Copyright (c) 2013年 Reese@objcoder.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HCReminderViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    
    IBOutlet UITableView *_mainTable;
}
@end
