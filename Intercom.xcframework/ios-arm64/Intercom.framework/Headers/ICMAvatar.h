#import <Foundation/Foundation.h>
#import <Intercom/ICMSafeNetworkModel.h>

@interface ICMAvatar : ICMSafeNetworkModel <NSSecureCoding>

@property (nonatomic, copy, readonly) NSString *imageUrl;

+ (instancetype)instanceFromDictionary:(NSDictionary *)aDictionary;
- (BOOL)isEqualToAvatar:(ICMAvatar *)other;
- (NSString *)chatHeadURL;
@end
