//
//  ZSNetWorkServe+Upload.h
//  Alamofire
//
//  Created by 张森 on 2020/3/12.
//

#import <ZSNetServeObjc/ZSNetWorkServe.h>

@interface ZSNetWorkServe (Upload)

/// 上传文件的请求方式，默认post
+ (NSInteger)zs_uploadMethod;

/// 单个文件上传
/// @param url 上传到的服务器地址
/// @param file 上传的文件
/// @param fileKey 上传文件对应 parameters 的key
/// @param mimeType mimeType
/// @param parameters 携带的参数
/// @param progress 进度
/// @param completion 完成的回调
+ (void)Upload:(NSString *)url
          file:(NSString *)file
       fileKey:(NSString *)fileKey
      mimeType:(NSString *)mimeType
    parameters:(NSDictionary <NSString*, NSString*>*)parameters
      progress:(void(^)(double progress))progress
    completion:(zs_requestCompletion)completion;

/// 多个文件上传
/// @param url 上传到的服务器地址
/// @param files 上传的文件数组
/// @param fileKey 上传文件对应 parameters 的key
/// @param parameters 携带的参数
/// @param progress 进度
/// @param completion 完成的回调
+ (void)Upload:(NSString *)url
         files:(NSArray *)files
       fileKey:(NSString *)fileKey
    parameters:(NSDictionary <NSString*, NSString*>*)parameters
      progress:(void(^)(double progress))progress
    completion:(zs_requestCompletion)completion;

@end
