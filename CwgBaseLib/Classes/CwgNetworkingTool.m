//
//  CwgNetworkingTool.m
//  Pods
//
//  Created by changwuguo on 2021/2/22.
//

#import "CwgNetworkingTool.h"
#import <AFNetworking/AFNetworking.h>
#import <JhtMarquee/JhtVerticalMarquee.h>

@interface CwgNetworkingTool ()

@property(nonatomic, strong) NSURLSessionDataTask *task;

@end

@implementation CwgNetworkingTool

- (void)createTextCycle
{
    JhtVerticalMarquee *verticalTextCycle = [JhtVerticalMarquee new];
    verticalTextCycle.numberOfLines = 1;
    verticalTextCycle.scrollDelay = 5.0f;
    verticalTextCycle.scrollDuration = 1.0f;
    verticalTextCycle.textColor = [UIColor blackColor];
    verticalTextCycle.textAlignment = NSTextAlignmentLeft;
    verticalTextCycle.textFont = [UIFont systemFontOfSize: 12.0f];
}

- (NSURLSessionDataTask *)POSTWithURLString:(NSString *)URLString parameters:(id)parameters success:(void (^)(id responseObject))success failure:(void (^)(id error))failure
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.requestSerializer.timeoutInterval = 20;
    _task =  [manager POST:URLString parameters:parameters success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (success) {
            success(@{@"status":@"success"});
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure) {
            failure(@{@"status":@"failure"});
        }
    }];
    return _task;
}

@end
