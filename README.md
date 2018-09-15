[![CocoaPods](https://img.shields.io/badge/platforms-iOS-orange.svg?maxAge=2592000)](https://cocoapods.org/pods/Intercom)
[![Languages](https://img.shields.io/badge/languages-OjbC%20%7C%20%20Swift-orange.svg?maxAge=2592000)](https://github.com/intercom/intercom-ios)
[![CocoaPods](https://img.shields.io/cocoapods/v/Intercom.svg?maxAge=2592000)](https://cocoapods.org/pods/Intercom)
[![carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Apache License](http://img.shields.io/badge/license-APACHE2-blue.svg?style=flat)](https://www.apache.org/licenses/LICENSE-2.0.html)
[![CocoaPods](https://img.shields.io/cocoapods/dt/Intercom.svg?maxAge=2592000)]()

<img src="https://user-images.githubusercontent.com/3185423/39155454-0c61c11e-474a-11e8-9471-dc4b37bf9d7c.png" width="238" height="65"/>

### Onboard, retain and support mobile users at scale
Engage customers with email, push, and in‑app messages and support them with an integrated knowledge base and help desk.

![ios-github](https://user-images.githubusercontent.com/3185423/42946658-506ad898-8b63-11e8-8680-8fd1458d34c5.png)


## Installation

Intercom for iOS supports iOS 8, 9, 10, 11 & 12. 

### CocoaPods
Add the Intercom pod into your Podfile and run `pod install`.
```ruby
    target :YourTargetName do
      pod 'Intercom'
    end
```
### Carthage
1. Add `github "intercom/intercom-ios"` to your Cartfile.
2. Run carthage update.
3. Go to your Xcode project's "General" settings. Drag `Intercom.framework` from `Carthage/Build/iOS` to the "Embedded Binaries" section. Make sure “Copy items if needed” is selected and click Finish.

### Manual Installation

1. [Download Intercom for iOS](https://github.com/intercom/intercom-ios/archive/master.zip) and extract the zip.
2. Go to your Xcode project's "General" settings. Drag `Intercom.framework` to the "Embedded Binaries" section. Make sure "Copy items if needed" is selected and click Finish.
3. Create a new "Run Script Phase" in your app’s target’s "Build Phases" and paste the following snippet in the script text field:

        bash "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/Intercom.framework/strip-frameworks.sh"
This step is required to work around an [App Store submission bug](http://www.openradar.me/radar?id=6409498411401216) when archiving universal binaries.

## Update Info.plist

When installing Intercom, you'll need to make sure that you have a `NSPhotoLibraryUsageDescription` entry in your `Info.plist`.

This is [required by Apple](https://developer.apple.com/library/content/qa/qa1937/_index.html) for all apps that access the photo library. It is necessary when installing Intercom due to the image upload functionality. Users will be prompted for the photo library permission only when they tap the image upload button.

## Example app
There is an example app provided [here](https://github.com/intercom/intercom-ios/tree/master/Examples) for both Objective-C and Swift.

## Setup and Configuration

* Our [installation guide](https://developers.intercom.com/docs/ios-installation) contains full setup and initialisation instructions.
* Read ["Configuring Intercom for iOS"](https://developers.intercom.com/docs/ios-configuration).
* Read our guide on [Push Notifications](https://developers.intercom.com/docs/ios-push-notifications).
*  Please contact us on [Intercom](https://intercom.io) with any questions you may have, we're only a message away!

## Customer Support

👋 Contact us with any issues at our [Intercom Developer Hub available here](https://developers.intercom.com/docs/intercom-mobile-installation?utm_source=github&utm_campaign=ios-help). If you bump into any problems or need more support, just start a conversation using Intercom there and it will be immediately routed to our Customer Support Engineers.

## Cordova/Phonegap Support
Looking for Cordova/Phonegap support? We have a [Cordova Plugin](https://github.com/intercom/intercom-cordova) for Intercom 🎉

## What about events, push notifications, company and user data?

Intercom for iOS has support for all these things. For full details please read our [documentation](https://developers.intercom.com/docs/ios-configuration).
