//
//  ITBBaseBlock.h
//  Pods
//
//  Created by James Treanor on 19/11/2015.
//
//

#import <UIKit/UIKit.h>
#import <Intercom/ITBBlockAppearance.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, ITBBlockDisplayMode){
    ITBBlockDisplayModeInline = 0,
    ITBBlockDisplayModeSingle = 1
};

typedef NS_ENUM(NSInteger, ITBBlockType){
    ITBBlockTypeUnknown            = -1,
    ITBBlockTypeParagraph          = 0,
    ITBBlockTypeHeading            = 1,
    ITBBlockTypeSubheading         = 2,
    ITBBlockTypeUnorderedList      = 3,
    ITBBlockTypeOrderedList        = 4,
    ITBBlockTypeImage              = 5,
    ITBBlockTypeButton             = 6,
    ITBBlockTypeTwitter            = 7,
    ITBBlockTypeFacebook           = 8,
    ITBBlockTypeCode               = 9,
    ITBBlockTypeVideo              = 10,
    ITBBlockTypeAttachmentList     = 11,
    ITBBlockTypeLink               = 12,
    ITBBlockTypeNotificationCard   = 13,
    ITBBlockTypeAttachment         = 14,
    ITBBlockTypeConversationRating = 15,
    ITBBlockTypeTyping             = 16,
    ITBBlockTypeLinkList           = 17,
    ITBBlockTypeMessengerCardFallback = 18,
    ITBBlockTypeVideoFile          = 19,
    ITBBlockTypeImageText           = 20,
    ITBBlockTypeTagList             = 21
};

static NSString *const kITBBlockType = @"type";
static NSString *const kITBHeadingBlockType = @"heading";
static NSString *const kITBParagraphBlockType = @"paragraph";
static NSString *const kITBSubheadingBlockType = @"subheading";
static NSString *const kITBUnorderedListBlockType = @"unorderedList";
static NSString *const kITBOrderedListBlockType = @"orderedList";
static NSString *const kITBImageBlockType = @"image";
static NSString *const kITBButtonBlockType = @"button";
static NSString *const kITBTwitterBlockType = @"twitterFollowButton";
static NSString *const kITBFacebookBlockType = @"facebookLikeButton";
static NSString *const kITBCodeBlockType = @"code";
static NSString *const kITBVideoBlockType = @"video";
static NSString *const kITBAttachmentListBlockType = @"attachmentList";
static NSString *const kITBTypingBlockType = @"internal_typing";
static NSString *const kITBAttachmentBlockType = @"internal_attachment";
static NSString *const kITBLinkBlockType = @"link";
static NSString *const kITBNotificationCardBlockType = @"notificationChannelsCard";
static NSString *const kITBLinkListType = @"linkList";
static NSString *const kITBMessengerCardType = @"messengerCard";
static NSString *const kITBVideoFileType = @"videoFile";

static NSString *const kITBVideoViewInvalidateVideoBoundsNotification = @"kITBVideoViewInvalidateVideoBoundsNotification";

@protocol ITBBlockViewProtocol;

@interface ITBBlock : NSObject <NSCopying, NSSecureCoding>

#pragma mark - Network

@property (nonatomic, copy, nonnull) NSString *text;
@property (nonatomic, copy, nonnull) NSString *align;

- (instancetype)init __attribute__((unavailable("init is not the designated initializer")));
+ (instancetype)new __attribute__((unavailable("new is not the designated initializer")));

/**
 This is the designated initializer for blocks.
 
 Note: nil will be returned if the dictionary does not have all valid keys or appearance is nil
 **/
- (instancetype)initWithDictionary:(NSDictionary *)aDictionary appearance:(id<ITBBlockAppearance>)appearance NS_DESIGNATED_INITIALIZER;

/**
 Preload any nessesary content for use.
 */
- (void)prepare:(void (^)(void))completion;

- (void)updateAppearance:(id <ITBBlockAppearance>)appearance;

#pragma mark - UI

@property (nonatomic, assign) CGSize estimatedSize;
@property (nonatomic, assign) ITBBlockDisplayMode displayMode; //defaults to ITBBlockDisplayModeInline
@property (nonatomic) BOOL isRequired;

- (ITBBlockType)type;

- (Class<ITBBlockViewProtocol>)viewClass;

// This is used in for view reuse. It can safely be nil
- (NSString *)blockUniqueIdentifier;

// Returns the plain text contents of a block where available.
- (nullable NSString *)plainTextRepresentation;

#pragma mark - Block Validation

+ (BOOL)validateBlockDictionary:(NSDictionary *)dictionary;
+ (BOOL)isNonEmptyString:(NSString *)string;

@end

NS_ASSUME_NONNULL_END
