//
//  CwgNetworkingTool.m
//  Pods
//
//  Created by changwuguo on 2021/2/22.
//

#import "CwgNetworkingTool.h"
#import <AFNetworking/AFNetworking.h>

@interface CwgNetworkingTool ()

@property(nonatomic, strong) NSURLSessionDataTask *task;

@end

@implementation CwgNetworkingTool

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
