//
//  ZSNetWorkServe+Upload.m
//  Alamofire
//
//  Created by 张森 on 2020/3/12.
//

#import "ZSNetWorkServe+Upload.h"
#import <ZSNetServe/ZSNetServe-Swift.h>

@implementation ZSNetWorkServe (Upload)

+ (NSInteger)zs_uploadMethod {
    
    return ZSHTTPMethodPost;
}

+ (void)Upload:(NSString *)url
          file:(NSString *)file
       fileKey:(NSString *)fileKey
      mimeType:(NSString *)mimeType
    parameters:(NSDictionary <NSString*, NSString*>*)parameters
      progress:(void(^)(double progress))progress
    completion:(zs_requestCompletion)completion {
    
    [ZSNetWorkingTool zs_objcUpload:file
                                 to:url
                            fileKey:fileKey
                           mimeType:mimeType
                         parameters:parameters
                             method:[self zs_uploadMethod]
                            headers:[self zs_httpHeader]
                           progress:progress
                         completion:completion];
    
    
}

+ (void)Upload:(NSString *)url
         files:(NSArray *)files
       fileKey:(NSString *)fileKey
    parameters:(NSDictionary <NSString*, NSString*>*)parameters
      progress:(void(^)(double progress))progress
    completion:(zs_requestCompletion)completion {
    
    [ZSNetWorkingTool zs_objcUploadWithFiles:files
                                          to:url
                                     fileKey:fileKey
                                  parameters:parameters
                                      method:[self zs_uploadMethod]
                                     headers:[self zs_httpHeader]
                                    progress:progress completion:completion];
    
}

@end
