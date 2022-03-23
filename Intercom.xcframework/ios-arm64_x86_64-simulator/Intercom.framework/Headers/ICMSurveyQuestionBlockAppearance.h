//
//  ICMSurveyQuestionBlockAppearance.h
//  IntercomSDK-Dynamic
//
//  Created by Michael McNamara on 22/10/2021.
//  Copyright © 2021 Intercom. All rights reserved.
//

#import <Intercom/Intercom.h>

NS_ASSUME_NONNULL_BEGIN

@interface ICMSurveyQuestionBlockAppearance : ICMAdminBlockAppearance

- (instancetype)initWithRequiredIndicatorColor:(UIColor *)color;

@end

NS_ASSUME_NONNULL_END
