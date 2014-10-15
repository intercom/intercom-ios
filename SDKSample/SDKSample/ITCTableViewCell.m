//
//  ITCTableViewCell.m
//  SDKSample
//
//  Created by Roland Gröpmair on 08/09/2014.
//  Copyright (c) 2014 Intercom. All rights reserved.
//

#import "ITCTableViewCell.h"

@interface ITCTableViewCell()
@end


@implementation ITCTableViewCell

- (void)prepareForReuse
{
    [self setSelected:NO animated:NO];
}

@end
