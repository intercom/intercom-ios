//
//  IntercomConversationCustomCell.h
//  Pods
//
//  Created by James Treanor on 26/03/2015.
//
//

#import <UIKit/UIKit.h>
#import <Intercom/IntercomConversationPart.h>

@interface IntercomConversationCustomCell : UICollectionViewCell

+ (CGSize)estimatedSizeForPart:(id<IntercomConversationPart>)part withinWidth:(CGFloat)width;
- (void)configureWithPart:(id<IntercomConversationPart>)part reloadDelegate:(id <IntercomConversationPartDelegate>)delegate;

@end
