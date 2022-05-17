//
//  ICMEngine.h
//  Intercom
//
//  Created by Brian Boyle on 16/08/2016.
//
//

@protocol ICMFileUploadConfig;
@protocol ICMFileDownloadConfig;

typedef void  (^ICMHTTPEmptySuccess)(void);
typedef void (^ICMHTTPDownloadContentSuccess)(NSURL *location, NSURLResponse *response);
typedef void  (^ICMHTTPClientError) (NSError *error);
typedef void  (^ICMHTTPClientProgress) (double progress);

@interface ICMEngine : NSObject

- (void)requestWithoutRedirects:(NSURLRequest *)request success:(ICMHTTPEmptySuccess)success failure:(ICMHTTPClientError)failure;
- (NSURLSessionUploadTask *)uploadFileWithFileName:(NSString *)filename data:(NSData *)data uploadConfig:(id<ICMFileUploadConfig>)uploadConfig success:(ICMHTTPEmptySuccess)success progress:(ICMHTTPClientProgress)progress failure:(ICMHTTPClientError)failure;
- (NSURLSessionDownloadTask *)downloadFileFrom:(NSURL *)url downloadConfig:(id<ICMFileDownloadConfig>)downloadConfig success:(ICMHTTPDownloadContentSuccess)success failure:(ICMHTTPClientError)failure;

@end
