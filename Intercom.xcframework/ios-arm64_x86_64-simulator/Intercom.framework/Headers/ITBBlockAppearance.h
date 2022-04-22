//
//  ITBBlockAppearance.h
//  Pods
//
//  Created by James Treanor on 13/12/2015.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <Intercom/ITBLoadingView.h>

@protocol ITBBlockAppearance <NSObject>

#pragma mark - Colors

@property (nonatomic, strong) UIColor *linkTextColor;
@property (nonatomic, strong) UIColor *textColor;
@property (nonatomic, strong) UIColor *headingTextColor;
@property (nonatomic, strong) UIColor *subHeadingTextColor;
@property (nonatomic, strong) UIColor *buttonBackgroundColor;
@property (nonatomic, strong) UIColor *buttonTextColor;
@property (nonatomic, strong) UIColor *codeBackgroundColor;
@property (nonatomic, strong) UIColor *codeTextColor;
@property (nonatomic, strong) UIColor *typingDotColor;
@property (nonatomic, strong) UIColor *separatorColor;
@property (nonatomic, strong) UIColor *appPrimaryColor;
@property (nonatomic, strong) UIColor *requiredIndicatorColor;

#pragma mark - Fonts

@property (nonatomic, strong) UIFont *paragraphFont;
@property (nonatomic, strong) UIFont *codeFont;
@property (nonatomic, strong) UIFont *headingFont;
@property (nonatomic, strong) UIFont *subheadingFont;
@property (nonatomic, strong) UIFont *buttonFont;

#pragma mark - Sizing

@property (nonatomic, assign) UIEdgeInsets textInsets;
@property (nonatomic, assign) UIEdgeInsets codeInsets;
@property (nonatomic, assign) UIEdgeInsets linkInsets;

#pragma mark - Images
@property (nonatomic, assign) ITBLoadingViewColorType loadingViewColorType;
@property (nonatomic, assign) CGFloat inlineImagePadding;
@property (nonatomic, assign) CGFloat singleImagePadding;

@property (nonatomic, assign) CGFloat inlineImageCornerRadius;
@property (nonatomic, assign) CGFloat singleImageCornerRadius;

#pragma mark - Strings

@property (nonatomic, strong) NSString *twitterFollowString;
@property (nonatomic, strong) NSString *facebookFollowString;

#pragma mark - Text

@property (nonatomic, assign) BOOL isTextSelectable;

@optional
@property (nonatomic, assign) CGFloat avatarRadius;


#pragma mark - Link List
@property (nonatomic, strong) UIImage *linkFooterImage;
@property (nonatomic, assign) CGSize linkFooterImageSize;
@property (nonatomic, assign) UIEdgeInsets linkFooterInsets;
@property (nonatomic, assign) CGFloat maxLinkHeight;
@property (nonatomic, assign) CGFloat defaultLinkHeight;

- (UIImage *)linkAuthorInitialsImageForName:(NSString *)name diameter:(CGFloat)diameter;
- (NSAttributedString *)linkUpdatedAtAttributedStringForDate:(NSDate *)date;
- (NSAttributedString *)linkWrittenByAttributedStringForName:(NSString *)name;


#pragma mark - Loading Indicator
@property (nonatomic, strong) UIColor *activityIndicatorColor;
@property (nonatomic, strong) UIImage *activityIndicatorImage;


#pragma mark - Messenger App Cards
@property (nonatomic, assign) UIEdgeInsets messengerCardInsets;
@property (nonatomic, assign) BOOL showMessengerAppBorder;

@end
