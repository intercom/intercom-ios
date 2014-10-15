//
//  ITCTableViewCell.h
//  SDKSample
//
//  Created by Roland Gröpmair on 08/09/2014.
//  Copyright (c) 2014 Intercom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ITCTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;

@end
