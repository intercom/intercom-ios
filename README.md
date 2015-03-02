## Requirements
The Intercom iOS SDK supports iOS 7.x and iOS 8.x.

## Installation

### CocoaPods
Add the Intercom pod into your Podfile and run a `pod install` or `pod update`.
	
	pod 'Intercom'
	
### Manual Installation 

Add the `Intercom.framework` to your Xcode project (you can get it from [GitHub](https://github.com/intercom/intercom-ios/tree/master/Intercom)). In your build target, **make sure** to include the `-ObjC` flag under `Other Linker Flags`. 

Sometimes Xcode won't correctly add the `Intercom.bundle` so make sure to add it to your target's Copy Bundle Resources build phase. Reveal the `Intercom.framework` in Finder and you'll find the bundle in the `Intercom.framework/Versions/A/Resources` folder.

Make sure you are linking the following frameworks: `ImageIO`, `MobileCoreServices`, `SystemConfiguration`, `AVFoundation`, `QuartzCore`, `Security` and `CoreGraphics`. 

If you get errors, check out our [Troubleshooting section here](http://docs.intercom.io/Install-on-your-mobile-product/install-the-intercom-ios-sdk#-troubleshooting-installation).


## Initialize Intercom
You'll need your Intercom app id and the iOS SDK API key that can be found on the [Intercom App Settings](https://app.intercom.io/) page in the API keys section. Once you've found those keys, initialize Intercom by calling the following in your application's delegate.

    [Intercom setApiKey:@"<#ios_sdk-...#>" forAppId:@"<#your-app-id#>"];

## How do I track my users?
 
In order to see your users in Intercom's user list, you must first register them via your iOS application. If you have a place in your application where you become aware of the user's identity such as a log in view controller, call one of the following depending on the information you have available for that user:

 If you have both a unique user identifier and an email for your users:
 
	 [Intercom registerUserWithUserId:@"<#123456#>" email:@"<#joe@example.com#>"];
	 
 If you only have a unique identifier for your users:
 
    [Intercom registerUserWithUserId:@"<#123456#>"];
 
 Finally, if you only have an email address for your users:

    [Intercom registerUserWithEmail:@"<#joe@example.com#>"];
    
If you are putting the Intercom SDK into an app that has persisted an authentication token or equivalent so your users don't have to log in repeatedly (like most apps) then we advise putting the user registration call in the `didBecomeActive:` method in your application delegate. This won't have any negative impact if you also add it to your authentication success method elsewhere in your app.

## Can I track unidentifed users?
 
Yes, absolutely. If you have an application that doesn't require users to log in, you can call:
 
    [Intercom registerUnidentifiedUser];
 
If the user subsequently logs in or you learn additional information about them (e.g. get an email address), calling any of the other user registration methods will update that user's identity in Intercom and contain all user data tracked previously.

## How does the in-app messenger work?

Intercom allows you to send messages to your users while also enabling your users send messages to you. If you have a dedicated button in your app that you wish to hook the new message composer up to, you can control Intercom's messaging UI via the `[Intercom presentMessageComposer];` and `[Intercom presentConversationList];` methods. More information on messaging with the iOS SDK can be found [here](http://docs.intercom.io/configure-ios-sdk#messaging).

## What about events, push notifications, company and user data?

The iOS SDK has support for all these things. For full details please read our [documentation](http://docs.intercom.io/configure-ios-sdk).

 
## I'm using a previous version of the SDK and this looks different, what's changed?
 
We have re-architected the iOS SDK to ensure it is as reliable as possible while tracking your users. We have focused on removing the asychronous behaviour of the SDK, for example you no longer need to wait for the completion blocks of the now deprecated `beginSession` calls before logging events or updating user data.  In doing so the SDK is more nimble and reliable than ever before.

Previous versions of the SDK will migrate with minimal effort. All deprecated methods still work for now, excluding the old session listener (since v2.0.6). These deprecated methods will be permanently removed in a future version.

## Documentation and getting started guides
 
Detailed documentation and getting started guides for:

- Updating a user
- Working with attributes
- Company Data
- Custom Attributes
- Events
- Messaging
- Deep Linking in messages

are available in [our documentation](http://docs.intercom.io/Install-on-your-mobile-product). Please contact us in Intercom with any questions you may have, we're only a message away!

## Xcode Documentation

This documentation provides integrated help in Xcode for all public APIs in the Intercom SDK. [Download the docset](https://github.com/intercom/intercom-ios/archive/master.zip) from the repository above and Copy the content into ~`/Library/Developer/Shared/Documentation/DocSets`.
