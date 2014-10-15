//
//  ITCTableViewDataSource.m
//  SDKSample
//
//  Created by Roland Gröpmair on 09/09/2014.
//  Copyright (c) 2014 Intercom. All rights reserved.
//

#import "ITCTableViewDataSource.h"
#import "ITCTableViewCell.h"
#import "ITCIntercomSettings.h"

@interface ITCTableViewDataSource ()
@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) NSDictionary *dataSourceItems;
@end

@implementation ITCTableViewDataSource

#pragma mark - Init

- (id)init
{
    self = [super init];
    if (self) {
        self.email = kIntercomSampleUserEmail;
        self.sessionActive = NO;
        self.dataSourceItems = @{
                                 @(ITCCellTypeBeginSession): @"Begin Session",
                                 @(ITCCellTypeUpdateUser): @"Update User",
                                 @(ITCCellTypeUpdateCompany): @"Update Company Attributes",
                                 @(ITCCellTypeUpdateCustomAttributes): @"Update Custom Attributes",
                                 @(ITCCellTypeSubmitEvent): @"Submit Event",
                                 @(ITCCellTypeSubmitEventWithMetaData): @"Submit Event with meta data",
                                 @(ITCCellTypePresentMessageComposer): @"Present Message Composer",
                                 @(ITCCellTypePresentConversationList): @"Present Conversation List",
                                 @(ITCCellTypeEndSession): @"End Session"
                                 };
    }
    return self;
}


#pragma mark - TableView Data Source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.isSessionActive ? self.dataSourceItems.count : 1;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ITCTableViewCell *cell;
    cell = [tableView dequeueReusableCellWithIdentifier:@"Action Cell"];
    
    cell.label.text = self.dataSourceItems[@(indexPath.row)];
    cell.detailLabel.text = @"";
    
    if (indexPath.row == ITCCellTypeBeginSession) {
        cell.detailLabel.text = [NSString stringWithFormat:@"with user %@", self.email];
        if (self.isSessionActive) {
            cell.label.text = @"Session Active";
        }
    }
    
    cell.selectionStyle = UITableViewCellSelectionStyleGray;
    return cell;
}

@end
