//
//  ITCTableViewDataSourceWithSessionActive.m
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

#import "ITCTableViewDataSourceWithSessionActive.h"
#import "ITCTableViewCell.h"

@interface ITCTableViewDataSourceWithSessionActive ()
@property (nonatomic, strong) NSDictionary *dataSourceItems;
@end

@implementation ITCTableViewDataSourceWithSessionActive

#pragma mark - Init

- (id)init
{
    self = [super init];
    if (self) {
        self.dataSourceItems = @{
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
    return self.dataSourceItems.count;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ITCTableViewCell *cell;
    cell = [tableView dequeueReusableCellWithIdentifier:@"Action Cell"];
    cell.label.text = self.dataSourceItems[@(indexPath.row)];
    cell.selectionStyle = UITableViewCellSelectionStyleGray;
    return cell;
}

@end
