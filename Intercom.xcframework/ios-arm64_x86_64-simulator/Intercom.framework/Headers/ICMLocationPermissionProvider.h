//
//  ICMLocationPermissionProvider.h
//  IntercomSDK
//
//  Copyright © 2026 Intercom. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 The location authorization status reported by an ``ICMLocationPermissionProvider``.

 The raw values match `CLAuthorizationStatus`, so you can convert with
 `ICMLocationAuthorizationStatus(rawValue: Int(manager.authorizationStatus.rawValue))`.
 */
typedef NS_ENUM(NSInteger, ICMLocationAuthorizationStatus) {
    ICMLocationAuthorizationStatusNotDetermined = 0,
    ICMLocationAuthorizationStatusRestricted = 1,
    ICMLocationAuthorizationStatusDenied = 2,
    ICMLocationAuthorizationStatusAuthorizedAlways = 3,
    ICMLocationAuthorizationStatusAuthorizedWhenInUse = 4
};

/**
 Asks for location permission on Intercom's behalf.

 Intercom does not use CoreLocation itself. To show Mobile Carousel screens that ask for location
 permission, implement this protocol with your own `CLLocationManager` and pass it to
 ``Intercom/setLocationPermissionProvider:``. Without a provider, those screens are not shown.

 Your app must also declare `NSLocationWhenInUseUsageDescription` in its Info.plist, and
 `NSLocationAlwaysAndWhenInUseUsageDescription` if you want Intercom to ask for "Always" access.

 ```swift
 import CoreLocation
 import Intercom

 final class LocationPermissionProvider: NSObject, ICMLocationPermissionProvider, CLLocationManagerDelegate {
     private let locationManager = CLLocationManager()

     var authorizationStatusDidChange: ((ICMLocationAuthorizationStatus) -> Void)?

     override init() {
         super.init()
         locationManager.delegate = self
     }

     func currentAuthorizationStatus() -> ICMLocationAuthorizationStatus {
         ICMLocationAuthorizationStatus(rawValue: Int(locationManager.authorizationStatus.rawValue)) ?? .notDetermined
     }

     func requestWhenInUsePermission() {
         locationManager.requestWhenInUseAuthorization()
     }

     func requestAlwaysPermission() {
         locationManager.requestAlwaysAuthorization()
     }

     func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
         authorizationStatusDidChange?(currentAuthorizationStatus())
     }
 }

 Intercom.setLocationPermissionProvider(LocationPermissionProvider())
 ```
 */
@protocol ICMLocationPermissionProvider <NSObject>

/**
 Set by Intercom. Call it, from any thread, whenever the location authorization status changes,
 including after the user answers a permission dialog or changes the permission in Settings.
 */
@property (nonatomic, copy, nullable) void (^authorizationStatusDidChange)(ICMLocationAuthorizationStatus status);

/** Returns the app's current location authorization status. */
- (ICMLocationAuthorizationStatus)currentAuthorizationStatus;

/** Asks the user for "When In Use" location permission, for example with `requestWhenInUseAuthorization()`. */
- (void)requestWhenInUsePermission;

/** Asks the user for "Always" location permission, for example with `requestAlwaysAuthorization()`. */
- (void)requestAlwaysPermission;

@end

NS_ASSUME_NONNULL_END
