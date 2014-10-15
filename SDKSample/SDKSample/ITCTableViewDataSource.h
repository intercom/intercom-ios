//
//  ITCTableViewDataSource.h
//  SDKSample
//
//  Created by Roland Gröpmair on 09/09/2014.
//  Copyright (c) 2014 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ITCTableViewDelegate.h"

@interface ITCTableViewDataSource : NSObject <UITableViewDataSource>

@property (nonatomic, readonly) NSString *email;
@property (nonatomic, getter=isSessionActive, assign) BOOL sessionActive;

@end
