//
// Created by Ignacio Delgado on 17/04/2014.
// Copyright (c) 2014 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ICMAssets : NSObject

+ (UIImage *)intercomLogoImage;

+ (UIImage *)openPostFromCardImage;

+ (UIImage *)spinnerImage;

+ (UIImage *)defaultAvatarImageWithInitials:(NSString *)userInitials diameter:(CGFloat)diameter;   // if there are initials, show them; if not, fall back to image
+ (UIImage *)warningImage;

+ (UIImage *)backButtonImage;
+ (UIImage *)submitButtonBackgroundImage;
+ (UIImage *)submitButtonBackgroundImageClear;
+ (UIImage *)submitImage;
+ (UIImage *)pickerSelector;
+ (UIImage *)dateSelector;
+ (UIImage *)greenCheckImage;
+ (UIImage *)buttonLoadingImage;
+ (UIImage *)textFieldBackgroundImage;
+ (UIImage *)textFieldErrorBackgroundImage;
+ (UIImage *)booleanButtonLeftImage;
+ (UIImage *)booleanButtonLeftImageSelected;
+ (UIImage *)booleanButtonRightImage;
+ (UIImage *)booleanButtonRightImageSelected;

+ (UIImage *)closePostImage;
+ (UIImage *)closeNoteImage;
+ (UIImage *)closeImage;

+ (UIImage *)startConversationImage;
+ (UIImage *)askAQuestion; 

+ (UIImage *)messageFailedImage;

+ (UIImage *)uploadButtonImage;
+ (UIImage *)chatBubbleImage;

+ (UIImage *)launcherImage;

+ (UIImage *)twitterIcon;
+ (UIImage *)linkedinIcon;

+ (UIImage *)snoozeIcon;

+ (UIImage *)sendIcon;
+ (UIImage *)cancelIcon;
+ (UIImage *)undoIcon;

+ (UIImage *)homescreenFailedImage;

// Help Center
+ (UIImage *)helpCenterLoadingImage;
+ (UIImage *)helpCenterChevron;
+ (UIImage *)helpCenterSearchIcon;

// Carousel
+ (UIImage *)screenActionCheckmark;
+ (UIImage *)carouselLoadingImage; 

// Articles 
+ (UIImage *)articleLoadingImage;

// Teammate Profile
+ (UIImage *)teammateTimeIcon;
+ (UIImage *)teammateRoleIcon;
+ (UIImage *)teammateIntroIcon;

//Text Input
+ (UIImage *)textInputIcon;
+ (UIImage *)textInputSelectedIcon;

//Photo Input
+ (UIImage *)photoInputIcon;
+ (UIImage *)photoInputSelectedIcon;
+ (UIImage *)expandPhotosIcon;

//GIF Input
+ (UIImage *)gifInputIcon;
+ (UIImage *)gifInputSelectedIcon;

+ (UIImage *)footerLinkIcon;

// Sounds
+ (NSURL *)soundForMessageSending;
+ (NSURL *)soundForMessageSendingFailure;
+ (NSURL *)soundForIncomingAdminMessage;
+ (NSURL *)soundForIncomingOperatorMessage;

@end
