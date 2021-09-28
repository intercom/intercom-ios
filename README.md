
[![CocoaPods](https://img.shields.io/badge/platforms-iOS-orange.svg?maxAge=2592000)](https://cocoapods.org/pods/Intercom)
[![Languages](https://img.shields.io/badge/languages-OjbC%20%7C%20%20Swift-orange.svg?maxAge=2592000)](https://github.com/intercom/intercom-ios)
[![CocoaPods](https://img.shields.io/cocoapods/v/Intercom.svg?maxAge=2592000)](https://cocoapods.org/pods/Intercom)
[![carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Apache License](http://img.shields.io/badge/license-APACHE2-blue.svg?style=flat)](https://www.apache.org/licenses/LICENSE-2.0.html)

<img src="https://user-images.githubusercontent.com/6392766/92717163-af7b0200-f357-11ea-9dc3-6f86d0c21d96.png" width="297" height="76"/>

## Onboard, retain and support mobile users at scale
Engage customers with email, push, and in‑app messages and support them with an integrated knowledge base and help desk.

### The Intercom Messenger
The [Intercom Messenger](https://www.intercom.com/help/en/articles/316-the-intercom-messenger-in-your-product-and-on-your-website) is the home for the conversations your customers have with you via Intercom, and the place where they can self-serve for support or to learn more about your product.

The Messenger works for both logged in and logged out users. It’s worth reading the detailed instructions in our [developer docs](https://developers.intercom.com/installing-intercom/docs/intercom-for-ios) on user management before you get started.

You can open the Intercom Messenger from a button in your app, programmatically when someone does something, or from a persistent button that sits over your app’s UI.

When you trigger the Intercom Messenger, your customer is presented with a home screen. This is configurable inside Intercom to change how it looks and what’s presented.

From there, your customer can search for help articles or start a conversation. A conversation goes to your inbox inside Intercom, and replies in both directions happen in real time. You can also send push notifications to your customers to let them know they have a reply after they’ve left your app.

![iOSREadme1](https://user-images.githubusercontent.com/3185423/84803321-c5e41c80-aff9-11ea-89b0-514332887066.jpg)

### [Outbound messaging features](https://www.intercom.com/mobile-carousels)
You can send messages to your customers from Intercom, and the mobile SDK will present them in your app. Messages can be targeted at specific users or groups of users, and can be scheduled to be sent during specific time windows.

Companies use this for many use cases, including onboarding new users, announcing features, proactive support, important notices etc.

The mobile SDK supports many different message formats, all of which can be created and configured inside Intercom. These include:

* **Push notifications** - these can open your app or follow a deep link.
* **Chats** - messages from someone in your team to your customer.
* **Mobile Carousels** - highly customizable, multi-screen messages with calls to action and device permissions.
* **Small posts** - a short announcement.
* **Large posts** - a full screen announcement.

We check for new messages when your app opens and whenever your customer or your app interacts with Intercom.

![iOS - Content types](https://user-images.githubusercontent.com/3185423/84890387-4191a800-b092-11ea-821e-e920ba7ef6a5.png)

## Installation

Intercom for iOS supports iOS 10+. 
Xcode 13 is required to build Intercom iOS SDK.
The binary size for Intercom is **2.3MB**.

### CocoaPods
Cocoapods 1.10 is required to install Intercom.
Add the Intercom pod into your Podfile and run `pod install`.
```ruby
    target :YourTargetName do
      pod 'Intercom'
    end
```

### Swift Package Manager
Add `https://github.com/intercom/intercom-ios` as a Swift Package Repository in Xcode and follow the instructions to add `Intercom` as a Swift Package.

![spm](https://user-images.githubusercontent.com/3185423/104470769-fac94980-55b1-11eb-80e5-929e77bc5558.png)

### Manual Installation

1. [Download Intercom for iOS](https://github.com/intercom/intercom-ios/archive/master.zip) and extract the zip.
2. Drag `Intercom.xcframework` into your project. 
<img width="258" alt="xcframework_drag" src="https://user-images.githubusercontent.com/3185423/102403528-4ce07480-3fde-11eb-9147-bf3f6a7fbf2c.png">

Make sure "Copy items if needed" is selected and click Finish.

<img width="451" alt="copy_items" src="https://user-images.githubusercontent.com/3185423/102404075-19521a00-3fdf-11eb-9ddd-2cf8d2efa657.png">

3. In the target settings for your app, set the Intercom.xcframework to “Embed & Sign”. This can be found in the “Frameworks, Libraries, and Embedded Content” section of the “General” tab.

<img width="613" alt="embed_sign" src="https://user-images.githubusercontent.com/3185423/102403646-7e594000-3fde-11eb-89e6-0dc280bf24b2.png">

## Update Info.plist

#### Photo Library usage:

With the exception of apps that _only_ support iOS 14+, when installing Intercom, you'll need to make sure that you have a `NSPhotoLibraryUsageDescription` entry in your `Info.plist`.

For apps that support iOS 13 or lower, this is [required by Apple](https://developer.apple.com/library/content/qa/qa1937/_index.html) to access the photo library. It is necessary when installing Intercom due to the image upload functionality. Users will be prompted for the photo library permission only when they tap the image upload button.

On iOS 14+, Intercom uses the new `PHPickerViewController` API which does not require requesting users for photo library permission. 

## Example app
There are example apps provided [here](https://github.com/intercom/intercom-ios/tree/master/Examples) for Objective-C and Swift, as well as an example built with SwiftUI.

## Setup and Configuration

* Our [installation guide](https://developers.intercom.com/docs/ios-installation) contains full setup and initialisation instructions.
* Read ["Configuring Intercom for iOS"](https://developers.intercom.com/docs/ios-configuration).
* Read our guide on [Push Notifications](https://developers.intercom.com/docs/ios-push-notifications).
*  Please contact us on [Intercom](https://intercom.io) with any questions you may have, we're only a message away!

## Customer Support

👋  Contact us with any issues at our [Intercom Developer Hub available here](https://developers.intercom.com/docs/intercom-mobile-installation?utm_source=github&utm_campaign=ios-help). If you bump into any problems or need more support, just start a conversation using Intercom there and it will be immediately routed to our Customer Support Engineers.

## Cordova/Phonegap Support
Looking for Cordova/Phonegap support? We have a [Cordova Plugin](https://github.com/intercom/intercom-cordova) for Intercom 🎉

## What about events, push notifications, company and user data?

Intercom for iOS has support for all these things. For full details please read our [documentation](https://developers.intercom.com/docs/ios-configuration).


