//
//  ICMFeedbackGenerator.h
//  IntercomSDK
//
//  Created by Michael Isaakidis on 31/08/2018.
//  Copyright © 2018 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, ICMFeedbackGeneratorType) {
    ICMFeedbackGeneratorTypeSelection,
    ICMFeedbackGeneratorTypeError,
    ICMFeedbackGeneratorTypeSuccess,
    ICMFeedbackGeneratorTypeWarning,
};

@interface ICMFeedbackGenerator : NSObject

+ (void)feedbackWithType:(ICMFeedbackGeneratorType)type;

@end
