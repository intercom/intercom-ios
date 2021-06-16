//
//  ICMMetricEvent.h
//  Pods
//
//  Created by James Treanor on 15/03/2016.
//
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, ICMMetricEventType) {
    ICMMetricEventTypeMessenger     = 0,
    ICMMetricEventTypeEducate       = 1,
    ICMMetricEventTypeCarousel      = 2
};

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Actions
static NSString *const ICMMetricEventActionOpened       = @"opened";
static NSString *const ICMMetricEventActionClosed       = @"closed";
static NSString *const ICMMetricEventActionReceived     = @"received";
static NSString *const ICMMetricEventActionDismissed    = @"dismissed";
static NSString *const ICMMetricEventActionViewed       = @"viewed";
static NSString *const ICMMetricEventActionSent         = @"sent";
static NSString *const ICMMetricEventActionTyped        = @"typed";
static NSString *const ICMMetricEventActionClicked      = @"clicked";
static NSString *const ICMMetricEventActionSearched     = @"searched";
static NSString *const ICMMetricEventActionCompleted    = @"completed";
static NSString *const ICMMetricEventActionStarted      = @"started";
static NSString *const ICMMetricEventActionFailed       = @"failed";
static NSString *const ICMMetricEventActionRequested    = @"requested";

#pragma mark - Objects
static NSString *const ICMMetricEventObjectConversation                     = @"conversation";
static NSString *const ICMMetricEventObjectNewConversation                  = @"new_conversation";
static NSString *const ICMMetricEventObjectMessenger                        = @"messenger";
static NSString *const ICMMetricEventObjectMessage                          = @"message";
static NSString *const ICMMetricEventObjectReply                            = @"reply";
static NSString *const ICMMetricEventObjectQuickReplies                     = @"quick_replies";
static NSString *const ICMMetricEventObjectQuickReply                       = @"quick_reply";
static NSString *const ICMMetricEventObjectReaction                         = @"reaction";
static NSString *const ICMMetricEventObjectBadge                            = @"badge";
static NSString *const ICMMetricEventObjectTeamProfile                      = @"team_profile";
static NSString *const ICMMetricEventObjectTeammateProfile                  = @"teammate_profile";
static NSString *const ICMMetricEventObjectArticle                          = @"article";
static NSString *const ICMMetricEventObjectArticlePreload                   = @"article_preload";
static NSString *const ICMMetricEventObjectHelpCenter                       = @"help_center";
static NSString *const ICMMetricEventObjectGIFInput                         = @"gif_input";
static NSString *const ICMMetricEventObjectTextInput                        = @"text_input";
static NSString *const ICMMetricEventObjectImageInput                       = @"image_input";
static NSString *const ICMMetricEventObjectExpandedImageInput               = @"expanded_image_input";
static NSString *const ICMMetricEventObjectExpandedGIFInput                 = @"expanded_gif_input";
static NSString *const ICMMetricEventObjectMessengerSheet                   = @"messenger_sheet";
static NSString *const ICMMetricEventObjectHomescreen                       = @"home_screen";
static NSString *const ICMMetricEventObjectHelpCenterData                   = @"help_center_data";
static NSString *const ICMMetricEventObjectArticleReaction                  = @"article_reaction";

#pragma mark Carousel
static NSString *const ICMMetricEventObjectCarouselMessage                = @"carousel_message";
static NSString *const ICMMetricEventObjectCarouselMessagePreload         = @"carousel_message_preload";
static NSString *const ICMMetricEventObjectCarouselPermissionSkipped      = @"carousel_permission_skipped";
static NSString *const ICMMetricEventObjectCarouselPermissionDialog       = @"carousel_permission_dialog";
static NSString *const ICMMetricEventObjectCarouselPermissionSettings     = @"carousel_permission_settings";


#pragma mark - Place
static NSString *const ICMMetricEventPlaceMessenger                       = @"messenger";
static NSString *const ICMMetricEventPlaceMessengerHomeApp                = @"messenger_home_app";
static NSString *const ICMMetricEventPlaceConversation                    = @"conversation";
static NSString *const ICMMetricEventPlaceInApp                           = @"in_app";
static NSString *const ICMMetricEventPlaceCarouselMessage                 = @"carousel_message";
static NSString *const ICMMetricEventPlaceWebview                         = @"webview";
static NSString *const ICMMetricEventPlaceHelpCenterCollectionList        = @"collection_list";
static NSString *const ICMMetricEventPlaceHelpCenterArticleList           = @"article_list";
static NSString *const ICMMetricEventPlaceHelpCenterSearchResults         = @"search_results";
static NSString *const ICMMetricEventPlaceHelpCenterArticle               = @"article";
static NSString *const ICMMetricEventPlaceHelpCenterAPI                   = @"api";
static NSString *const ICMMetricEventPlaceLegacyArticleSearchApp          = @"legacy_article_search_app";
static NSString *const ICMMetricEventPlacePushNotification                = @"push";


#pragma mark - Context
static NSString *const ICMMetricEventContextNoContext                 = @"no_context";
static NSString *const ICMMetricEventContextFromDefaultLauncher       = @"from_launcher";
static NSString *const ICMMetricEventContextFromCustomLauncher        = @"from_custom_launcher";
static NSString *const ICMMetricEventContextFromCloseButton           = @"from_close_button";
static NSString *const ICMMetricEventContextFromBadge                 = @"from_badge";
static NSString *const ICMMetricEventContextFromSnippet               = @"from_snippet";
static NSString *const ICMMetricEventContextFromFull                  = @"from_full";
static NSString *const ICMMetricEventContextFromConversationList      = @"from_conversation_list";
static NSString *const ICMMetricEventContextInConversation            = @"in_conversation";
static NSString *const ICMMetricEventContextInNewConversation         = @"in_new_conversation";
static NSString *const ICMMetricEventContextFromConversation          = @"from_conversation";
static NSString *const ICMMetricEventContextFromNewConversation       = @"from_new_conversation";
static NSString *const ICMMetricEventContextFromClosedConversation    = @"from_closed_conversation";
static NSString *const ICMMetricEventContextInFollowUpConversation    = @"in_followup_conversation";
static NSString *const ICMMetricEventContextFromClicking              = @"from_clicking";
static NSString *const ICMMetricEventContextFromScrolling             = @"from_scrolling";
static NSString *const ICMMetricEventContextFromAuto                  = @"from_auto";
static NSString *const ICMMetricEventContextFromPush                  = @"from_push";
static NSString *const ICMMetricEventContextOnArticle                 = @"on_article";
static NSString *const ICMMetricEventContextFromHelpCenterWebView     = @"from_help_center_webview";
static NSString *const ICMMetricEventContextFromArticleOnButton       = @"from_article_on_button";
static NSString *const ICMMetricEventContextHomescreen                = @"home_screen";
static NSString *const ICMMetricEventContextConversation              = @"conversation";
static NSString *const ICMMetricEventContextFromCarousel              = @"from_carousel";
static NSString *const ICMMetricEventContextFromRetry                 = @"from_retry";
static NSString *const ICMMetricEventContextFromSwipe                 = @"from_swipe";
static NSString *const ICMMetricEventContextFromCTA                   = @"from_cta";
static NSString *const ICMMetricEventContextFromPermission            = @"from_permission";
static NSString *const ICMMetricEventContextFromPermissionSkipped     = @"from_permission_skipped";
static NSString *const ICMMetricEventContextReactionHappy             = @"reaction_happy";
static NSString *const ICMMetricEventContextReactionNeutral           = @"reaction_neutral";
static NSString *const ICMMetricEventContextReactionSad               = @"reaction_sad";
static NSString *const ICMMetricEventContextHumanStyle                = @"style_human";
static NSString *const ICMMetricEventContextBotStyle                  = @"style_bot";
static NSString *const ICMMetricEventContextArticle                   = @"article";

#pragma mark Carousel Permissions
static NSString *const ICMMetricEventContextPushNotification        = @"push_notifications_permission";
static NSString *const ICMMetricEventContextLocation                = @"location_permission";
static NSString *const ICMMetricEventContextCamera                  = @"camera_permission";
static NSString *const ICMMetricEventContextPhotoGallery            = @"photos_permission";
static NSString *const ICMMetricEventContextMicrophone              = @"microphone_permission";

#pragma mark - Info Keys
static NSString *const kICMMetricEventInfoConversationId        = @"conversation_id";
static NSString *const kICMMetricEventInfoClosedConversationId  = @"closed_conversation_id";
static NSString *const kICMMetricEventInfoConversation          = @"conversation";
static NSString *const kICMMetricEventInfoPushInstanceId        = @"instance_id";
static NSString *const kICMMetricEventInfoConversationPart      = @"conversation_part";
static NSString *const kICMMetricEventInfoMessageText           = @"message_text";
static NSString *const kICMMetricEventInfoIsAttachment          = @"is_attachment";
static NSString *const kICMMetricEventInfoIsAnnotated           = @"is_annotated";
static NSString *const kICMMetricEventInfoIsSticker             = @"is_sticker";
static NSString *const kICMMetricEventInfoHasArticleCard        = @"has_article_card";
static NSString *const kICMMetricEventInfoLauncherState         = @"state";
static NSString *const kICMMetricEventInfoPushType              = @"push_type";
static NSString *const kICMMetricEventInfoMessageType           = @"message_type";
static NSString *const kICMMetricEventInfoBadgeValue            = @"badge_value";
static NSString *const kICMMetricEventInfoArticleId             = @"article_id";
static NSString *const kICMMetricEventInfoIsGIF                 = @"is_gif";
static NSString *const kICMMetricEventInfoGIFSearchQuery        = @"search_query";
static NSString *const kICMMetricEventInfoTeamMateStatus        = @"teammate_status";
static NSString *const kICMMetricEventInfoTimeSinceLastActive   = @"time_since_last_active";
static NSString *const kICMMetricEventInfoWithinOfficeHours     = @"within_office_hours";
static NSString *const kICMMetricEventInfoURL                   = @"url";
static NSString *const kICMMetricEventInfoQuickReplyId          = @"quick_reply_id";
static NSString *const kICMMetricEventInfoScreensInMessage      = @"screens_in_message";
static NSString *const kICMMetricEventInfoScreensShown          = @"screens_shown";
static NSString *const kICMMetricEventInfoScreensSeen           = @"screens_seen";
static NSString *const kICMMetricEventInfoPermissionGranted     = @"permission_granted";
static NSString *const kICMMetricEventInfoCarouselInstanceId    = @"instance_id";
static NSString *const kICMMetricEventInfoRequestedContentId    = @"requested_content_id";
static NSString *const kICMMetricEventInfoSource                = @"source";
static NSString *const kICMMetricEventInfoErrorCode             = @"error_code";
static NSString *const kICMMetricEventInfoConversationShown     = @"conversation_shown";
static NSString *const kICMMetricEventInfoFiltered              = @"filtered";

#pragma mark - Info Values
static NSString *const kICMMetricEventInfoLauncherStateEmpty            = @"empty";
static NSString *const kICMMetricEventInfoLauncherStateBadge            = @"badge";
static NSString *const kICMMetricEventInfoLauncherStateSnippet          = @"snippet";
static NSString *const kICMMetricEventInfoLauncherStateFull             = @"full";
static NSString *const kICMMetricEventInfoLauncherStateMultipleSnippets = @"multiple snippets";
static NSString *const kICMMetricEventInfoPushTypeMessage               = @"message";
static NSString *const kICMMetricEventInfoPushTypeNotification          = @"notification";
static NSString *const kICMMetricEventInfoMessageTypeNote               = @"note";
static NSString *const kICMMetricEventInfoMessageTypePost               = @"post";
static NSString *const kICMMetricEventInfoMessageTypeChat               = @"chat";
static NSString *const kICMMetricEventInfoTeamMateActive                = @"active";
static NSString *const kICMMetricEventInfoTeamMateAway                  = @"away";
static NSString *const kICMMetricEventInfoProgrammatic                  = @"programmatic";
static NSString *const kICMMetricEventInfoAutomatic                     = @"automatic";


@interface ICMMetricEvent : NSObject <NSCoding>

+ (instancetype)eventWithAction:(NSString *)action
                         object:(NSString *)object
                          place:(nullable NSString *)place
                        context:(nullable NSString *)context;

+ (instancetype)eventWithAction:(NSString *)action
                         object:(NSString *)object
                          place:(nullable NSString *)place
                        context:(nullable NSString *)context
                 additionalInfo:(nullable NSDictionary *)info;

- (NSDictionary<NSString *, id> *)eventDictionary;

@property (nonatomic, assign) ICMMetricEventType eventType;

@end

NS_ASSUME_NONNULL_END
