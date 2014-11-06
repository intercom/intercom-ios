//
//  ITCTableViewDelegate.h
//  SDKSample
//
//  Copyright 2014 Intercom
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

#import <Foundation/Foundation.h>

// the different cell types to demonstrate the Intercom iOS SDK calls: begin session, update user etc.
typedef NS_ENUM(NSUInteger, ITCCellTypeBeginSession) {
    ITCCellTypeBeginSessionEmail,
    ITCCellTypeBeginSessionUserId,
};

typedef NS_ENUM(NSUInteger, ITCCellType) {
    ITCCellTypeUpdateUser,
    ITCCellTypeUpdateCompany,
    ITCCellTypeUpdateCustomAttributes,
    ITCCellTypeSubmitEvent,
    ITCCellTypeSubmitEventWithMetaData,
    ITCCellTypePresentMessageComposer,
    ITCCellTypePresentConversationList,
    ITCCellTypeEndSession
};

@protocol ITCIntercomSDKCallsProtocol
- (void)handleBeginSessionEmail;
- (void)handleBeginSessionUserId;
- (void)handleUpdateUser;
- (void)handleUpdateCompany;
- (void)handleUpdateCustomAttributes;
- (void)handleSubmitEvent;
- (void)handleSubmitEventWithMetaData;
- (void)handlePresentMessageComposer;
- (void)handlePresentConversationList;
- (void)handleEndSession;
@end

@class ITCTableViewDataSourceWithNoSession;


@interface ITCTableViewDelegate : NSObject <UITableViewDelegate>

@end
