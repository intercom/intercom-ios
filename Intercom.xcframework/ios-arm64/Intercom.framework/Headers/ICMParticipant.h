#import <Foundation/Foundation.h>
#import <Intercom/ICMSafeNetworkModel.h>
#import <Intercom/ICMAvatar.h>

@interface ICMParticipant : ICMSafeNetworkModel <NSSecureCoding>

@property (nonatomic, strong) ICMAvatar *avatar;
@property (nonatomic, copy) NSString *email;
@property (nonatomic, copy) NSString *participantId;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *type;
@property (nonatomic, assign) BOOL isBot;

+ (instancetype)instanceFromDictionary:(NSDictionary *)aDictionary;
- (BOOL)isEqualToParticipant:(ICMParticipant *)other;
- (NSString *)firstName;
- (BOOL)isAdmin;
- (NSAttributedString *)adminAppNameTitle:(NSDictionary *)styleAttributes;

@end
