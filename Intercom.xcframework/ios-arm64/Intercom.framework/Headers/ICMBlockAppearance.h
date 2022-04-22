//
//  ICMBlockAppearance.h
//  Pods
//
//  Created by Brian Boyle on 22/06/2016.
//
//

#import <Foundation/Foundation.h>
#import <Intercom/ITBBlockAppearance.h>

@interface ICMBlockAppearance : NSObject <ITBBlockAppearance>

+ (instancetype)sharedInstance;

@end
