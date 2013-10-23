//
//  HCAllAPI.m
//  东方脉搏
//
//  Created by TY on 13-10-23.
//  Copyright (c) 2013年 Reese@objcoder.com. All rights reserved.
//

#import "HCHTTP.h"
#import "ASIFormDataRequest.h"

@implementation HCHTTP

#pragma mark ---登陆验证---
/**登陆验证
 *
 * @param user:机构管理员帐号
 * @param passwd:机构管理员密码
 */
+(void)loginUserName:(NSString*)user
            password:(NSString*)passwd
     completionBlock:(void (^)(int returnCode,NSData *message))completionBlock{
    NSURL *url = [NSURL URLWithString:@"http://webservice.mebo120.com/services/GetTipContrastReport"];
//    NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:url];
//    NSMutableString *string=[[NSMutableString alloc]init];
//    [string appendFormat:@"strOrgUserName=%@",user];
//    [string appendFormat:@"&strOrgUserPass=%@",passwd];
//    [urlRequest setTimeoutInterval:60];
//    [urlRequest setHTTPMethod:@"POST"];
//    [urlRequest setHTTPBody:[string dataUsingEncoding:NSUTF8StringEncoding]];
//    NSOperationQueue *queue=[[NSOperationQueue alloc]init];
//    [NSURLConnection sendAsynchronousRequest:urlRequest
//                                       queue:queue
//                           completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
//                               NSLog(@"%@",[[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding]);
//    }];
    
    ASIFormDataRequest *request=[ASIFormDataRequest requestWithURL:url];
    [request setPostValue:user forKey:@"strOrgUserName"];
    [request setPostValue:passwd forKey:@"strOrgUserPass"];
    [request setFailedBlock:^{
        NSLog(@"失败:response:%@",request.responseString);
    }];
    [request setCompletionBlock:^{
        NSLog(@"成功:response:%@",request.responseString);
    }];
    [request startAsynchronous];
}
#pragma mark ---建立团体客户---
/**建立团体客户
 *
 * @param groupNmae:团体客户名称
 * @param groupId:客户端团体客户ID
 */
+(void)addOrgGroupGroupNmae:(NSString*)groupNmae
                    groupId:(NSString*)groupId
               completionBlock:(void (^)(int returnCode,NSData *message))completionBlock{
}
#pragma mark ---设置的体检指标---
/**设置的体检指标
 *
 * @param targetId:体检指标ID
 * @param targetDiagnoseMale:体检指标男性诊断值
 * @param targetDiagnoseFemale:体检指标女性诊断值
 * @param targetStandardMale:体检指标男性标准值
 * @param targetStandardFemale:体检指标女性标准值
 * @param targetUnit:体检指标单位
 */
+(void)setOrgTargetTargetId:(NSInteger)targetId
         targetDiagnoseMale:(CGFloat)targetDiagnoseMale
       targetDiagnoseFemale:(CGFloat)targetDiagnoseFemale
     targetStandardMaleNULL:(CGFloat)targetStandardMale
   targetStandardFemaleNULL:(CGFloat)targetStandardFemale
             targetUnitNULL:(NSString*)targetUnit
               completionBlock:(void (^)(int returnCode,NSData *message))completionBlock{
}

#pragma mark ---设置提示报告---
/**设置提示报告
 *
 * @param tipItemId:健康提示ID
 * @param tipItemTitle:健康提示标题
 * @param tipItemContent:健康提示内容
 */
+(void)setOrgTipReportTipItemId:(NSInteger)tipItemId
                   tipItemTitle:(CGFloat)tipItemTitle
                 tipItemContent:(NSString*)tipItemContent
            completionBlock:(void (^)(int returnCode,NSData *message))completionBlock{
}

#pragma mark ---设置提示报告---
/**设置提示报告
 *
 * @param custName:健康提示ID
 * @param custID:健康提示标题
 * @param questID:健康提示内容
 * @param questID:
 * @param questTime:
 * @param questHsID:
 * @param quest:
 */
+(void)setCustQuestCustName:(NSString*)custName
                 custIDNULL:(NSString*)custID
                    questID:(NSString*)questID
                  questTime:(NSString*)questTime
              questHsIDNULL:(NSString*)questHsID
                      quest:(NSString*)quest
                    groupId:(NSString*)groupId
                completionBlock:(void (^)(int returnCode,NSData *message))completionBlock{
}
@end
