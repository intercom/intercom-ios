//
//  ITCViewController.m
//  SDKSample
//
//  Created by Roland Gröpmair on 08/09/2014.
//  Copyright (c) 2014 Intercom. All rights reserved.
//

#import "ITCViewController.h"
#import "ITCUtils.h"
#import "ITCTableViewDataSource.h"
#import "ITCTableViewDelegate.h"

@interface ITCViewController ()
@property (nonatomic, strong) ITCTableViewDataSource *dataSource;
@property (nonatomic, strong) ITCTableViewDelegate *delegate;
@end

@implementation ITCViewController

- (void)awakeFromNib {
    [super awakeFromNib];

    self.delegate = [[ITCTableViewDelegate alloc] init];
    self.dataSource = [[ITCTableViewDataSource alloc] init];
    
    self.tableView.dataSource = self.dataSource;
    self.tableView.delegate = self.delegate;
    self.delegate.dataSource = self.dataSource;     

    self.view.backgroundColor = [ITCUtils interblue];
}

@end
