#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ICMColor : NSObject

+ (UIColor *)primaryColor;

+ (UIColor *)darkPrimaryColor;
+ (UIColor *)primaryTextColor;
+ (UIColor *)primaryColorVariant;
+ (UIColor *)primaryOrDarkColor;
+ (UIColor *)whiteOrDarkForPrimaryColor;
+ (UIColor *)secondaryColor;
+ (UIColor *)darkSecondaryColor;
+ (UIColor *)secondaryTextColor;
+ (UIColor *)secondaryColorVariant;
+ (UIColor *)helpCenterThemeColor;
+ (UIColor *)helpCenterTextColor;
+ (UIColor *)helpCenterSearchPlaceholderColor;
+ (UIColor *)helpCenterSearchBarBackgroundColor;
+ (UIColor *)bubbleTextColorUser;
+ (UIColor *)bubbleFillColorUser;
+ (UIColor *)launcherImageColor;
+ (UIColor *)intercomLinkColor;
+ (UIColor *)conversationAccessoryViewTextColor;
+ (UIColor *)composerSeparatorColor;
+ (UIColor *)inAppsTitleColor; 


#pragma mark - Colour Palette

+ (UIColor *)ghostWhite;
+ (UIColor *)dark;
+ (UIColor *)charcoalGrey;
+ (UIColor *)coolGrey;
+ (UIColor *)mercuryGrey;
+ (UIColor *)silver;
+ (UIColor *)intercomBlue;
+ (UIColor *)errorColor;
+ (UIColor *)closeButtonDarkColor;
+ (UIColor *)closeButtonDarkColorWithAlpha:(CGFloat)alpha; 
+ (UIColor *)closeButtonLightColor;
+ (UIColor *)closeButtonLightColorWithAlpha:(CGFloat)alpha;
+ (BOOL)isLightColor:(UIColor *)backgroundColor;


#pragma mark - System color backports

/// A backport of `systemGray5` which is available from iOS 13.0+. This should be deleted when dropping iOS 12.
+ (UIColor *)systemGray5;


#pragma mark - Active/Away States

+ (UIColor *)activeColour;
+ (UIColor *)awayColour;


#pragma mark - Button colors

/**
 * Calculates and returns a darker version of the passed in color. This should be used as the text color of an ICMButton.
 *
 * @param color The original color.
 * @return The darker color to be used as the text color of an ICMButton.
*/
+ (UIColor *)buttonTextColorVarient:(UIColor *)color;

/**
 * Calculates and returns a lighter version of the passed in color. This should be used as the background of an ICMButton.
 *
 * @param color The original color.
 * @return The lighter color to be used as the background of an ICMButton.
*/
+ (UIColor *)buttonBackgroundColorVarient:(UIColor *)color;

/**
 * Calculates and returns a darker version of the passed in colour. This should be used as the background color of an ICMButton while it is being tapped.
 *
 * @param color The original color.
 * @return The darker color to be used as the background of am ICMButton while it is being tapped.
*/
+ (UIColor *)buttonHighlightColor:(UIColor *)color; 


#pragma mark - Colour Utils

+ (UIColor *)colorWithR:(int)r g:(int)g b:(int)b;
+ (UIColor *)colorWithR:(int)r g:(int)g b:(int)b alpha:(CGFloat)alpha;
+ (UIColor *)colorWithHexString:(NSString *)hexString;

/**
 * Fades between firstColor and secondColor at the specified ratio:
 *
 *    @ ratio 0.0 - fully firstColor
 *    @ ratio 0.5 - halfway between firstColor and secondColor
 *    @ ratio 1.0 - fully secondColor
 *
 */

+ (UIColor *)colorForFadeBetweenFirstColor:(UIColor *)firstColor
                               secondColor:(UIColor *)secondColor
                                   atRatio:(CGFloat)ratio;

@end
