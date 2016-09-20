![Intercom](Examples/Sample-ObjC/Sample-ObjC/Images.xcassets/Intercom-logo-github.imageset/Intercom_logo-github.png)

[![CocoaPods](https://img.shields.io/badge/platforms-iOS-orange.svg?maxAge=2592000)](https://cocoapods.org/pods/Intercom)
[![Languages](https://img.shields.io/badge/languages-OjbC%20%7C%20%20Swift-orange.svg?maxAge=2592000)](https://github.com/intercom/intercom-ios)
[![CocoaPods](https://img.shields.io/cocoapods/v/Intercom.svg?maxAge=2592000)](https://cocoapods.org/pods/Intercom)
[![carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Apache License](http://img.shields.io/badge/license-APACHE2-blue.svg?style=flat)](https://www.apache.org/licenses/LICENSE-2.0.html)
[![CocoaPods](https://img.shields.io/cocoapods/dt/Intercom.svg?maxAge=2592000)]()

## Installation

Intercom for iOS supports iOS 8.x, iOS 9.x and iOS 10.

### CocoaPods
Add the Intercom pod into your Podfile and run `pod install`.

    target :YourTargetName do
      pod 'Intercom'
    end

###Carthage
1. Add `github "intercom/intercom-ios"` to your Cartfile.
2. Run carthage update.
3. Go to your Xcode project's "General" settings. Drag `Intercom.framework` from `Carthage/Build/iOS` to the "Embedded Binaries" section. Make sure “Copy items if needed” is selected and click Finish.

### Manual Installation

1. [Download Intercom for iOS](https://github.com/intercom/intercom-ios/archive/master.zip) and extract the zip.
2. Go to your Xcode project's "General" settings. Drag `Intercom.framework` to the "Embedded Binaries" section. Make sure "Copy items if needed" is selected and click Finish.
3. Create a new "Run Script Phase" in your app’s target’s "Build Phases" and paste the following snippet in the script text field:

        bash "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/Intercom.framework/strip-frameworks.sh"
This step is required to work around an [App Store submission bug](http://www.openradar.me/radar?id=6409498411401216) when archiving universal binaries.

### iOS 10 Requirements
If you are supporting iOS 10 in your app, you'll need to make sure that you add `NSPhotoLibraryUsageDescription` to your `Info.plist` so that your users have the ability to upload photos in Intercom's messenger. This is a new permissions requirement from Apple in iOS 10.

##Sample app
There is a sample app provided for both Objective-C and Swift.
To use the sample app:

1. Go to the `Examples/Sample-ObjC` or `Examples/Sample-Swift` directory and run `pod install`.
2. Open `Sample-ObjC.xcworkspace` or `Sample-Swift.xcworkspace` in Xcode.
3. Set your iOS API key and App ID at the top of `ITCAppDelegate.m` or `AppDelegate.swift`.
4. Build and run.

##Setup and Configuration

* Our [installation guide](https://docs.intercom.io/install-on-your-product-or-site/quick-install/install-intercom-on-your-ios-app) contains full setup and initialisation instructions.
* Read ["Configuring Intercom for iOS"](https://docs.intercom.io/configure-intercom-for-your-product-or-site/configure-intercom-for-mobile/configuring-intercom-for-ios).
*  Please contact us on [Intercom](https://intercom.io) with any questions you may have, we're only a message away!

## Cordova/Phonegap Support
Looking for Cordova/Phonegap support? We have a [Cordova Plugin](https://github.com/intercom/intercom-cordova) for Intercom 🎉

## Upgrading to v3.0

Upgrading to the latest version of the iOS SDK is easy! 😉  Checkout out our [upgrade guide](https://docs.intercom.io/messenger-v3/upgrade-to-the-new-messenger-ios) for more info.

## What about events, push notifications, company and user data?

Intercom for iOS has support for all these things. For full details please read our [documentation](http://docs.intercom.io/Install-on-your-mobile-product/configuring-intercom-for-ios).

## Xcode Documentation

This documentation provides integrated help in Xcode for all public APIs in Intercom for iOS. [Download the docset](https://github.com/intercom/intercom-ios/releases/latest) from the latest release and Copy the content into `~/Library/Developer/Shared/Documentation/DocSets`.

## Migrating from legacy version of the SDK

To upgrade from SDK versions **older then version 2.2.4** there are some method changes that you may want to be aware of. See installation instructions at the top of this page for more information on how to install the new version of the SDK.

<table>
	<tr><th colspan="3" style="text-align:center;">iOS Method Name Changes</th></tr>
	<tr><td style="text-align:center; font-weight: bold; width: 33.3%;">Old Name</td><td style="text-align:center; font-weight: bold; width: 33.3%;">Type</td><td style="text-align:center; font-weight: bold; width: 33.3%;">New Name</td></tr>
	<tr><td colspan="3" style="text-align:center; font-weight: bold;">From SDK version 2.0.x</td></tr>
	<tr><td>beginSessionForUserWithUserId</td><td>Name change. Dropped block parameter.</td><td>registerUserWithUserId</td></tr>
	<tr><td>beginSessionForUserWithEmail</td><td>Name change. Dropped block parameter.</td><td>registerUserWithEmail</td></tr>
	<tr><td>beginSessionForAnonymousUserWithCompletion</td><td>Name change. Dropped block parameter.</td><td>registerUnidentifiedUser</td></tr>
	<tr><td>updateUserWithAttributes</td><td>Dropped block parameter.</td><td>n/a</td></tr>
	<tr><td>logEventWithName</td><td>Dropped block parameter.</td><td>n/a</td></tr>
	<tr><td colspan="3" style="text-align:center; font-weight: bold;">From SDK version 1.x.x</td></tr>
	<tr><td>beginSessionForUserWithUserId</td><td>Name change. Dropped block parameter.</td><td>registerUserWithUserId</td></tr>
	<tr><td>beginSessionForUserWithEmail</td><td>Name change. Dropped block parameter.</td><td>registerUserWithEmail</td></tr>
  <tr><td>updateAttributes</td><td>Name change. Dropped block parameter.</td><td>updateUserWithAttributes</td></tr>
</table>
