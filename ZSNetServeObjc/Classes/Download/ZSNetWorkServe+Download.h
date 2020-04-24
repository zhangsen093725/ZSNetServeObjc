//
//  ZSNetWorkServe+Download.h
//  Alamofire
//
//  Created by 张森 on 2020/3/12.
//

#import <ZSNetServeObjc/ZSNetWorkServe.h>

@interface ZSNetWorkServe (Download)

/// 文件下载
/// @param url 下载地址
/// @param cacheUrl 保存本地的URL，默认为 cache
/// @param progress 进度
/// @param completion 完成回调
+ (void)Download:(NSString *)url
      toCacheUrl:(NSURL *)cacheUrl
        progress:(void(^)(double progress))progress
      completion:(zs_requestCompletion)completion;

@end

