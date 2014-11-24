
//  ITCTableViewController.m
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

#import "ITCTableViewController.h"
#import "ITCUtils.h"
#import "ITCTableViewDelegate.h"
#import "UITableView+ITCUpdateSessionHeaderView.h"
#import "ITCSDKHandler.h"
#import "ITCTableViewDataSourceWithUserNotAuthenticated.h"
#import "ITCTableViewDataSourceWithIntercomSessionLoading.h"
#import "ITCTableViewDataSourceWithIntercomSessionActive.h"
#import "ITCUserAuthenticationManager.h"


@interface ITCTableViewController ()
@property (nonatomic, strong) ITCTableViewDelegate *delegate;
@property (nonatomic, strong) ITCTableViewDataSourceWithUserNotAuthenticated    *dataSourceWithUserNotAuthenticated;
@property (nonatomic, strong) ITCTableViewDataSourceWithIntercomSessionLoading  *dataSourceWithIntercomSessionLoading;
@property (nonatomic, strong) ITCTableViewDataSourceWithIntercomSessionActive   *dataSourceWithIntercomSessionActive;
@end

@implementation ITCTableViewController


#pragma mark - Refresh UI after user has authenticated

- (void)didReceiveUpdatingUIRequiredNotification:(id)notification {
    
    // the Intercom session status has changed -> let's update the UI (reload the table view with the correct data source)
    self.tableView.dataSource = [self dataSourceWithUserAuthenticated:[ITCUserAuthenticationManager sharedAuthenticationManager].isUserAuthenticated sessionIsOpen:[ITCUserAuthenticationManager sharedAuthenticationManager].intercomSessionOpen];
    
    // then reload the table view - will show the possible actions
    [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationAutomatic];
    
    // and update the headerView so the user sees if we have a session
    [self.tableView updateSessionHeaderView];
}


#pragma mark - IntercomSessionListener Protocol

- (void)intercomSessionStatusDidChange:(BOOL)isSessionOpen {
    NSLog(@"%s: isSessionOpen=%@", __FUNCTION__, isSessionOpen ? @"YES" : @"NO");
    
    // the Intercom session status has changed: do whatever you need to do in your app to update the UI (enable/disable help button etc.) to reflect this status change
    
    // in our case, we tell the AuthenticationManager that the status changed. The AuthenticateManager will trigger UI changes accordingly
    [[ITCUserAuthenticationManager sharedAuthenticationManager] setIntercomSessionOpen:isSessionOpen];
}


#pragma mark - View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [ITCUtils interblue];
    
    self.delegate = [[ITCTableViewDelegate alloc] init];
    self.tableView.delegate = self.delegate;
    
    self.tableView.dataSource = self.dataSourceWithUserNotAuthenticated;
}


- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.tableView updateSessionHeaderView];
}


- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didReceiveUpdatingUIRequiredNotification:) name:kITCUpdatingUIRequiredNotification object:nil];
    
    // tell Intercom that we want to handle Session Changes in this class
    [Intercom setSessionListener:self];
}


- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


#pragma mark - Handling of Data Sources

- (ITCTableViewDataSourceWithUserNotAuthenticated *)dataSourceWithUserNotAuthenticated {
    if (!_dataSourceWithUserNotAuthenticated) {
        _dataSourceWithUserNotAuthenticated = [[ITCTableViewDataSourceWithUserNotAuthenticated alloc] init];
    }
    return _dataSourceWithUserNotAuthenticated;
}


- (ITCTableViewDataSourceWithIntercomSessionLoading *)dataSourceWithIntercomSessionLoading {
    if (!_dataSourceWithIntercomSessionLoading) {
        _dataSourceWithIntercomSessionLoading = [[ITCTableViewDataSourceWithIntercomSessionLoading alloc] init];
    }
    return _dataSourceWithIntercomSessionLoading;
}


- (ITCTableViewDataSourceWithIntercomSessionActive *)dataSourceWithIntercomSessionActive {
    if (!_dataSourceWithIntercomSessionActive) {
        _dataSourceWithIntercomSessionActive = [[ITCTableViewDataSourceWithIntercomSessionActive alloc] init];
    }
    return _dataSourceWithIntercomSessionActive;
}


- (id<UITableViewDataSource>)dataSourceWithUserAuthenticated:(BOOL)isUserAuthenticated sessionIsOpen:(BOOL)isSessionOpen {
    if (!isUserAuthenticated) {
        return self.dataSourceWithUserNotAuthenticated;
    } else {
        return isSessionOpen ? self.dataSourceWithIntercomSessionActive : self.dataSourceWithIntercomSessionLoading;
    }
}

@end
