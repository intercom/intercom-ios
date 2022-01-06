//
//  ICMHelpCenterTranslationManager.h
//  IntercomSDK-Dynamic
//
//  Created by Michael McNamara on 16/06/2021.
//  Copyright © 2021 Intercom. All rights reserved.
//

#import "ICMTranslationManager.h"

NS_ASSUME_NONNULL_BEGIN

/// A `ICMTranslationManager` subclass that uses our `help_center_locale` instead of the standard Intercom locale.
/// This should be used to translate any strings in our native Help Center. 
@interface ICMHelpCenterTranslationManager : ICMTranslationManager

@end

NS_ASSUME_NONNULL_END
