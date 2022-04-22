//
//  ICMListTextField.h
//  IntercomSDK
//
//  Created by Dale Cantwell on 05/04/2019.
//  Copyright © 2019 Intercom. All rights reserved.
//

#import <Intercom/ICMTextField.h>

NS_ASSUME_NONNULL_BEGIN

@interface ICMPickerTextField : ICMTextField <ICMSubmittableInputViewProtocol, UIPickerViewDataSource, UIPickerViewDelegate>
- (instancetype)initWithValue:(nullable id)value options:(NSArray *)options allowSubmission:(BOOL)allowSubmission delegate:(id<ICMInputViewDelegate>)delegate;
- (void)configureForEditingStateBackgroundColor:(UIColor *)backgroundColor;
@end

NS_ASSUME_NONNULL_END
