//
//  ITCViewController.m
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

#import "ITCViewController.h"
#import "ITCUtils.h"
#import "ITCTableViewDelegate.h"
#import "UITableView+ITCUpdateSessionHeaderView.h"
#import "ITCSessionManager.h"

@interface ITCViewController ()
@property (nonatomic, strong) ITCTableViewDelegate *delegate;
@end

@implementation ITCViewController

- (void)awakeFromNib {
    [super awakeFromNib];

    self.delegate = [[ITCTableViewDelegate alloc] init];
    self.tableView.delegate = self.delegate;

    self.view.backgroundColor = [ITCUtils interblue];
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    self.tableView.dataSource = [[ITCSessionManager sharedSessionManager] dataSourceForSession];
    [self.tableView updateSessionHeaderView];
}

@end
