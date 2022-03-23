//
//  ICMParticipatingAdmin.h
//  Pods
//
//  Created by James Treanor on 10/03/2016.
//
//

#import "ICMParticipant.h"
@class ICMSocialAccount;

@interface ICMParticipatingAdmin : ICMParticipant

@property (nonatomic, copy) NSDate *lastActive;
@property (nonatomic, assign) BOOL isActive;
@property (nonatomic, copy) NSString *intro;
@property (nonatomic, copy) NSString *jobTitle;
@property (nonatomic, copy) NSString *locationString;
@property (nonatomic, copy) NSNumber *timezoneOffset;
@property (nonatomic, strong) NSArray<ICMSocialAccount *> *socialAccounts;

@end
