//
//  ITBImageLoader.h
//  Pods
//
//  Created by Brian Boyle on 30/03/2017.
//
//

#import <Foundation/Foundation.h>

@interface ITBImageLoader : NSObject

+ (instancetype)defaultLoader;
+ (instancetype)longTermLoader;
+ (void)clearCache;

- (NSUUID *)loadImageWithURLString:(NSString *)urlString completion:(void (^)(id image))completion;
- (id)cachedImageForURL:(NSURL *)url;
- (id)cachedImageForKey:(NSString *)cacheKey;
- (void)cacheImage:(UIImage *)image ForKey:(NSString *)key;
- (UIImage *)imageForKey:(NSString *)key withGenerationBlock:(UIImage *(^)(void))block;

@end
