//
//  ZSNetWorkServe+OPTION.m
//  Alamofire
//
//  Created by 张森 on 2020/3/12.
//

#import "ZSNetWorkServe+OPTION.h"
#import <ZSNetServe/ZSNetServe-Swift.h>

@implementation ZSNetWorkServe (OPTION)

/// OPTION请求
/// @param url 请求的url
+ (void)OPTION:(NSString *)url {
    [self OPTION:url path:@"" parameters:nil completion:nil];
}

/// OPTION请求
/// @param url 请求的url
/// @param completion 请求完成的回调
+ (void)OPTION:(NSString *)url
    completion:(zs_requestCompletion)completion {
    
    [self OPTION:url path:@"" parameters:nil completion:completion];
}

/// OPTION请求
/// @param url 请求的url
/// @param parameters 请求参数
/// @param completion 请求完成的回调
+ (void)OPTION:(NSString *)url
    parameters:(NSDictionary *)parameters
    completion:(zs_requestCompletion)completion {
    
    [self OPTION:url path:@"" parameters:parameters completion:completion];
}

/// OPTION请求
/// @param base 请求的基础url，比如 https://www.baidu.com
/// @param path 请求的url path，比如 search/page
+ (void)OPTION:(NSString *)base
          path:(NSString *)path {
    [self OPTION:base path:path parameters:nil completion:nil];
}


/// OPTION请求
/// @param base 请求的基础url，比如 https://www.baidu.com
/// @param path 请求的url path，比如 search/page
/// @param completion 请求的回调
+ (void)OPTION:(NSString *)base
          path:(NSString *)path
    completion:(zs_requestCompletion)completion {
    
    [self OPTION:base path:path parameters:nil completion:completion];
}


/// OPTION请求
/// @param base 请求的基础url，比如 https://www.baidu.com/
/// @param path 请求的url path，比如 search/page
/// @param parameters 请求的参数
/// @param completion 请求的回调
+ (void)OPTION:(NSString *)base
          path:(NSString *)path
    parameters:(NSDictionary *)parameters
    completion:(zs_requestCompletion)completion {
    
    [ZSNetWorkingTool zs_objcRequest:base
                                path:path
                          parameters:parameters
                             timeOut:[self zs_timeOut]
                              method:ZSHTTPMethodOption
                            encoding:[self zs_requestEncoding]
                            response:[self zs_responseEncoding]
                             headers:[self zs_httpHeader]
                         contentType:[self zs_contentType]
                          completion:completion];
}

@end

