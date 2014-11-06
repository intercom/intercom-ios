//
//  ITCTableViewDataSource.m
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

#import "ITCTableViewDataSourceWithNoSession.h"
#import "ITCTableViewCell.h"

@interface ITCTableViewDataSourceWithNoSession ()
@property (nonatomic, strong) NSDictionary *dataSourceItems;
@end

@implementation ITCTableViewDataSourceWithNoSession

#pragma mark - Init

- (id)init
{
    self = [super init];
    if (self) {
        
        self.dataSourceItems = @{
                                 @(ITCCellTypeBeginSessionEmail): @"Begin Session with Email",
                                 @(ITCCellTypeBeginSessionUserId): @"Begin Session with UserId",
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
