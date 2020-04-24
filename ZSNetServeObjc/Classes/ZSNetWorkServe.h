//
//  ZSNetWorkServe.h
//  Alamofire
//
//  Created by 张森 on 2020/3/12.
//

#import <Foundation/Foundation.h>

/// 网络请求完成的回调
/// responseObject 网络请求完成的响应内容
/// isSuccess http[s]请求的status = 200时为 YES
/// error 错误信息
typedef void(^zs_requestCompletion)(id responseObject, BOOL isSuccess, NSError *error);


@interface ZSNetWorkServe : NSObject

/// 网络请求的httpHeader
+ (NSDictionary *)zs_httpHeader;

/// 网络请求的contentType， defult：["application/json", "text/json", "text/javascript", "text/html", "text/plain", "application/atom+xml", "application/xml", "text/xml", "image/png", "image/jpeg", "multipart/form-data"]
+ (NSSet *)zs_contentType;

/// 网络请求超时时长，默认为 30 S
+ (NSTimeInterval)zs_timeOut;

/// 网络请求编码方式，默认为URLDefult
+ (NSInteger)zs_requestEncoding;

/// 网络请求响应编码方式，默认为JSON
+ (NSInteger)zs_responseEncoding;

@end

