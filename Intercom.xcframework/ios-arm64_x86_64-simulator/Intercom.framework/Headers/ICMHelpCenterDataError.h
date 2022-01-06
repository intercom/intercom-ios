//
//  ICMHelpCenterDataError.h
//  IntercomSDK-Dynamic
//
//  Created by Michael McNamara on 08/06/2021.
//  Copyright © 2021 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

extern NSErrorDomain const ICMHelpCenterDataErrorDomain;

typedef NS_ERROR_ENUM(ICMHelpCenterDataErrorDomain, ICMHelpCenterDataError) {
    contentNotAvailable = 1,
    networkError,
    somethingWentWrong,
    noUserRegistered,
    noAppRegistered
};

NS_ASSUME_NONNULL_END
