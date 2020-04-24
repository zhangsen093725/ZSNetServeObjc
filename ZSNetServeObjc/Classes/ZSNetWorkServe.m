//
//  ZSNetWorkServe.m
//  Alamofire
//
//  Created by 张森 on 2020/3/12.
//

#import "ZSNetWorkServe.h"
#import <ZSNetServe/ZSNetServe-Swift.h>

@implementation ZSNetWorkServe

/// 网络请求的httpHeader
+ (NSDictionary *)zs_httpHeader {
    
    return nil;
}

/// 网络请求的contentType， defult：["application/json", "text/json", "text/javascript", "text/html", "text/plain", "application/atom+xml", "application/xml", "text/xml", "image/png", "image/jpeg", "multipart/form-data"]
+ (NSSet<NSString *> *)zs_contentType {
    
    return nil;
}

/// 网络请求超时时长，默认为 30 S
+ (NSTimeInterval)zs_timeOut {
    
    return 30;
}

/// 网络请求编码方式，默认为URLDefult
+ (NSInteger)zs_requestEncoding {
    
    return RequestEncodingURLDefult;
}

/// 网络请求响应编码方式，默认为JSON
+ (NSInteger)zs_responseEncoding {
    
    return ResponseEncodingJSON;
}

@end

