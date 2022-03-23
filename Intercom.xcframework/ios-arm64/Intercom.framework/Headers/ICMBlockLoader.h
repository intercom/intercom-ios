//
//  ICMBlockLoader.h
//  IntercomSDK
//
//  Created by Brian Boyle on 18/09/2018.
//  Copyright © 2018 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol ITBBlockAppearance;
@class ITBBlock;

@interface ICMBlockLoader : NSObject

+ (ITBBlock *)blockFromDictionary:(NSDictionary *)dictionary appearance:(id<ITBBlockAppearance>)appearance;

@end
