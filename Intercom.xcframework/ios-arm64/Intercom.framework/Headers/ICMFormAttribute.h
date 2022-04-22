//
//  ICMAttribute.h
//  IntercomSDK
//
//  Created by Dale Cantwell on 20/02/2019.
//  Copyright © 2019 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Intercom/ICMSafeNetworkModel.h>

typedef NS_ENUM(NSUInteger, ICMFormAttributeInputType) {
    ICMFormAttributeInputTypeSimpleText = 0,
    ICMFormAttributeInputTypeEmail     = 1,
    ICMFormAttributeInputTypePhone     = 2,
    ICMFormAttributeInputTypePicker    = 3,
    ICMFormAttributeInputTypeInteger   = 4,
    ICMFormAttributeInputTypeFloat     = 5,
    ICMFormAttributeInputTypeDate      = 6,
    ICMFormAttributeInputTypeBoolean   = 7,
    ICMFormAttributeInputTypeWebsite   = 8,
    ICMFormAttributeInputTypeUnknown   = 9,
};

NS_ASSUME_NONNULL_BEGIN

@interface ICMFormAttribute : ICMSafeNetworkModel

@property (nonatomic, copy) NSString *customBotId;
@property (nonatomic, copy) NSString *identifier;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *type;
@property (nonatomic, copy) NSArray<NSString *> *options;
@property (nonatomic, strong, nullable) id value;

+ (instancetype)instanceFromDictionary:(NSDictionary *)dictionary;
+ (void)storeFormError:(NSString *)error key:(NSString *)key;
+ (NSString *)fetchFormErrorForKey:(NSString *)key;
+ (void)clearFormErrorsCache;
- (ICMFormAttributeInputType)formInputType;
- (NSString *)uniqueId;


@end

NS_ASSUME_NONNULL_END
