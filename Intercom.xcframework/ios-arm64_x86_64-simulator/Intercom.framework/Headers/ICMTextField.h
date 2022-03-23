//
//  ICMTextField.h
//  IntercomSDK
//
//  Created by Brian Boyle on 28/02/2019.
//  Copyright © 2019 Intercom. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Intercom/ICMInputViewProtocol.h>
@protocol ICMValidatorProtocol; 
@class ICMSubmitButton;

NS_ASSUME_NONNULL_BEGIN

static const NSUInteger kDefaultCursorInset = 10;

@interface ICMTextField : UITextField <ICMSubmittableInputViewProtocol>
@property (nonatomic) BOOL isRequired;
@property (nonatomic) NSInteger characterLimit; 
@property (nonatomic, assign) NSUInteger cursorInset;
@property (nonatomic, strong) ICMSubmitButton *submitButton;
@property (nonatomic, readonly) BOOL allowSubmission;
@property (nonatomic, weak) id<ICMInputViewDelegate> inputViewDelegate;

- (instancetype)initWithValue:(nullable id)value
              allowSubmission:(BOOL)allowSubmission
               delegate:(nullable id<ICMInputViewDelegate>)delegate;
- (BOOL)isUserInputValid:(NSError * __autoreleasing *)error;
- (BOOL)notRequiredAndEmpty;
- (void)configureDefaults;
- (NSArray<id<ICMValidatorProtocol>> *)validators;

@end

NS_ASSUME_NONNULL_END
