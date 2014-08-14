# Developer's Guide for the iOS SDK

This is an early access release of the new Intercom iOS SDK. In order to use this release, you must opt in to both the web and mobile in-app beta. Do to this, please get in touch with us through Intercom.

## Requirements
The Intercom iOS SDK currently supports iOS 7.x although we plan to support iOS 8 once it’s out of beta. The SDK is currently a universal binary so it will run in simulators and on devices.

## Quick Install
- Add Intercom.h and libIntercom.a to your Xcode project. In your build target, include the `-ObjC` flag under `Other Linker Flags`.
- You'll need your Intercom App Id and the SDK API key. You can get them from https://app.intercom.io/apps/your_app_id/sdk_apps
- Initialize Intercom by calling:
`[Intercom setApiKey:@"ios_sdk-..." forAppId:@"your_app_id"];`
- Start a session by either calling
`[Intercom beginSessionForUserWithEmail:self.userEmail completion:nil];`
or
`[Intercom beginSessionForUserWithUserId:self.userId completion:nil];`
And that's it. 

Was that too fast? For more detailed instructions read the [step by step install instructions here](http://docs.intercom.io/90342-How-do-I-install-the-iOS-SDK-20).

## Developer's Advanced Guide
If you want to learn about the following topics, [you find detailed information here](http://docs.intercom.io/90339-How-do-I-configure-my-iOS-SDK)
- Session control
- Updating a user
- Working with attributes
- Company Data
- Custom Attributes
- Events
- Messaging
- Using Push notifications
- iOS SDK Architecture

## Logging
By default the Intercom iOS SDK only logs errors. By calling the class method `enableLogging`, you can increase the log level. It is recommended to use this only for debugging purposes, not the App Store build.
