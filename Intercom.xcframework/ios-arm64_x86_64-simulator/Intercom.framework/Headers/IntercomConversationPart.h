//
//  IntercomConversationPart.h
//  Pods
//
//  Created by James Treanor on 06/01/2016.
//
//

#import <Foundation/Foundation.h>
@class ITBBlock;

typedef NS_ENUM(NSInteger, IntercomConversationPartState) {
    IntercomConversationPartStateSent,
    IntercomConversationPartStateSending,
    IntercomConversationPartStateFailed
};

@protocol IntercomConversationPart <NSObject>

@property (nullable, nonatomic, strong) NSArray<ITBBlock *> *blocks;
@property (nonatomic, assign) IntercomConversationPartState state;

@property (nonatomic, assign) CGFloat maxLayoutWidth;
@property (nonatomic, assign) CGSize estimatedSize;

@property (nonatomic, assign) BOOL participantIsAdmin;

@end

@protocol IntercomConversationPartDelegate <NSObject>
- (void)reloadRequiredForPart:(nonnull id<IntercomConversationPart>)part;
- (nonnull UIViewController *)viewControllerForModalPresentation;
@end
