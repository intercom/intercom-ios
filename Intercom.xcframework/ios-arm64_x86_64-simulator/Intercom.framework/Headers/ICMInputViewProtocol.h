//
//  ICMInputViewProtocol.h
//  IntercomSDK
//
//  Created by Brian Boyle on 09/04/2019.
//  Copyright © 2019 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ICMInputViewProtocol <NSObject>

@property (nonatomic) BOOL isRequired;
- (BOOL)isUserInputValid:(NSError * __autoreleasing *)error;
- (nullable id)inputValue;
- (void)configureErrorState;
- (void)configureDefaultState;
@end

@protocol ICMSubmittableInputViewProtocol <ICMInputViewProtocol>
- (void)configureSuccessState;
- (void)configureLoadingState;
@end

@protocol ICMInputViewDelegate <NSObject>
- (void)entryCompleteButtonTapped;
- (void)cancelButtonTapped;
- (void)valueUpdated:(nullable id)value;
@end

NS_ASSUME_NONNULL_END
