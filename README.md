# Developer's Guide for the Intercom iOS SDK

## Requirements
The Intercom iOS SDK supports iOS 7.x and iOS 8.0 

Remark: If you have an app that supports iOS 6, you can use the [old version](https://github.com/intercom/intercom-ios/tree/sdk1) of the Intercom iOS SDK.

## Quick Install
### Using cocoapods
Add Intercom pod into your Podfile
```
pod 'Intercom', '~> 2.0.0'
```

### Manual Installation 
- Add `Intercom.h` and `libIntercom.a` to your Xcode project (you can get them from [here](https://github.com/intercom/intercom-ios/tree/master/Intercom)). In your build target, include the `-ObjC` flag under `Other Linker Flags`. If you get errors, check out our [Troubleshooting section here](http://docs.intercom.io/install-on-your-mobile-product/install-the-intercom-ios-sdk#troubleshooting-installation).
- You'll need your Intercom App Id and the SDK API key. You can get them from your [Intercom App Settings](https://app.intercom.io/) -> API keys 
- Initialize Intercom by calling:
`[Intercom setApiKey:@"ios_sdk-..." forAppId:@"your_app_id"];`
- Start a session by either calling
`[Intercom beginSessionForUserWithEmail:self.userEmail completion:nil];`
or
`[Intercom beginSessionForUserWithUserId:self.userId completion:nil];`
And that's it. 

Was that too fast? For more detailed instructions read the [step by step install instructions here](http://docs.intercom.io/install-on-your-mobile-product/install-the-intercom-ios-sdk#step-by-step-install).

## Developer's Advanced Guide
If you want to learn about the following topics, [you find detailed information here](http://docs.intercom.io/install-on-your-mobile-product/configure-the-ios-sdk)
- Session control
- Updating a user
- Working with attributes
- Company Data
- Custom Attributes
- Events
- Messaging
- Using Push notifications
- Intercom iOS SDK Architecture and Prerequisites

## Logging
By default the Intercom iOS SDK only logs errors. By calling the class method `enableLogging`, you can increase the log level. It is recommended to use this only for debugging purposes, not the App Store build.
