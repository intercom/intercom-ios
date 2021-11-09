#import <Foundation/Foundation.h>
#import "ICMSafeNetworkModel.h"

@interface ICMAvatar : ICMSafeNetworkModel <NSSecureCoding>

@property (nonatomic, copy, readonly) NSString *imageUrl;

+ (instancetype)instanceFromDictionary:(NSDictionary *)aDictionary;
- (BOOL)isEqualToAvatar:(ICMAvatar *)other;
- (NSString *)chatHeadURL;
@end
