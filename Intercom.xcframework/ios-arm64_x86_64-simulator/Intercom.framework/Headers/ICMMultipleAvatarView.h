#import <UIKit/UIKit.h>

@class ICMParticipant;

@interface ICMMultipleAvatarView : UIView

@property (nonatomic, strong) UIColor *avatarBorderColor;

- (id)initWithWidth:(CGFloat)width;

- (void)bindAdmins:(NSArray<ICMParticipant *> *)admins;

- (void)cancelImageLoad;
- (void)keepUserPresenceViewBackgroundColor;
@end
