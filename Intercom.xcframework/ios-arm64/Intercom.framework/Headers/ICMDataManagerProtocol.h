//
//  ICMDataManagerProtocol.h
//  IntercomSDK
//
//  Created by Michael McNamara on 14/09/2021.
//  Copyright © 2021 Intercom. All rights reserved.
//

#ifndef ICMDataManagerProtocol_h
#define ICMDataManagerProtocol_h

NS_ASSUME_NONNULL_BEGIN

@protocol ICMDataManagerProtocol

- (BOOL)hasRecentConversations;
- (BOOL)hasPreviousConversations;
- (int)recentConversationCount;

@end

NS_ASSUME_NONNULL_END

#endif /* ICMDataManagerProtocol_h */
