//
//  ZSNetWorkServe+GET.h
//  Alamofire
//
//  Created by 张森 on 2020/3/12.
//

#import <ZSNetServeObjc/ZSNetWorkServe.h>

@interface ZSNetWorkServe (GET)

/// GET请求
/// @param url 请求的url
+ (void)GET:(NSString *)url;


/// GET请求
/// @param base 请求的基础url，比如 https://www.baidu.com
/// @param path 请求的url path，比如 search/page
+ (void)GET:(NSString *)base
       path:(NSString *)path;


/// GET请求
/// @param url 请求的url
/// @param completion 请求完成的回调
+ (void)GET:(NSString *)url
 completion:(zs_requestCompletion)completion;


/// GET请求
/// @param base 请求的基础url，比如 https://www.baidu.com
/// @param path 请求的url path，比如 search/page
/// @param completion 请求的回调
+ (void)GET:(NSString *)base
       path:(NSString *)path
 completion:(zs_requestCompletion)completion;


/// GET请求
/// @param url 请求的url
/// @param parameters 请求参数
/// @param completion 请求完成的回调
+ (void)GET:(NSString *)url
 parameters:(NSDictionary *)parameters
 completion:(zs_requestCompletion)completion;


/// GET请求
/// @param base 请求的基础url，比如 https://www.baidu.com/
/// @param path 请求的url path，比如 search/page
/// @param parameters 请求的参数
/// @param completion 请求的回调
+ (void)GET:(NSString *)base
       path:(NSString *)path
 parameters:(NSDictionary *)parameters
 completion:(zs_requestCompletion)completion;

@end

