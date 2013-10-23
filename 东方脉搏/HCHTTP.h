//
//  HCAllAPI.h
//  东方脉搏
//
//  Created by TY on 13-10-23.
//  Copyright (c) 2013年 Reese@objcoder.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HCHTTP : NSObject
/**登陆验证
 *
 * @param user:机构管理员帐号
 * @param passwd:机构管理员密码
 */
+(void)loginUserName:(NSString*)user
            password:(NSString*)passwd
     completionBlock:(void (^)(int returnCode,NSData *message))completionBlock;
@end
