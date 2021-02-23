//
//  CwgNetworkingTool.h
//  Pods
//
//  Created by changwuguo on 2021/2/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CwgNetworkingTool : NSObject

- (void)createTextCycle;

- (NSURLSessionDataTask *)POSTWithURLString:(NSString *)URLString parameters:(id)parameters success:(void (^)(id responseObject))success failure:(void (^)(id error))failure;

@end

NS_ASSUME_NONNULL_END
