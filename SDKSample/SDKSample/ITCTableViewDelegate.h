//
//  ITCTableViewDelegate.h
//  SDKSample
//
//  Created by Roland Gröpmair on 09/09/2014.
//  Copyright (c) 2014 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>

// the different cell types to demonstrate the Intercom iOS SDK calls: begin session, update user etc.
typedef NS_ENUM(NSUInteger, ITCCellType) {
    ITCCellTypeBeginSession,
    ITCCellTypeUpdateUser,
    ITCCellTypeUpdateCompany,
    ITCCellTypeUpdateCustomAttributes,
    ITCCellTypeSubmitEvent,
    ITCCellTypeSubmitEventWithMetaData,
    ITCCellTypePresentMessageComposer,
    ITCCellTypePresentConversationList,
    ITCCellTypeEndSession
};

@class ITCTableViewDataSource;


@interface ITCTableViewDelegate : NSObject <UITableViewDelegate>

@property (nonatomic, weak) ITCTableViewDataSource *dataSource;

@end
