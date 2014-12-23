# Developer's Guide for the Intercom iOS SDK

## Requirements
The Intercom iOS SDK supports iOS 7.x and iOS 8.x.

## Quick Install
### Option 1:	Download our SDKSample app
- If you want to see the Intercom SDK in action, we have an SDKSample app for you. Just enter `pod try intercom` in the command line. This will download the Intercom SDK and launch the SDKSample app in Xcode with the help of [CocoaPods](http://cocoapods.org).
 
- In the `ITCIntercomSettings.h` file, enter the following lines:

    ```c
    static NSString *kIntercomAppId = @" <your_app_id> ";
    static NSString *kIntercomAPIKey = @" <ios_sdk-...> ";
    ```

- Then run in the iOS Simulator or your iOS device.

### Option 2: Use CocoaPods
- Add the Intercom pod into your Podfile and run a `pod install` or `pod update`.

    ```
    pod 'Intercom'
    ```

- Then go to section [Initialize Intercom and Begin Session](#initialize-intercom-and-begin-session) below.

### Option 3: Manual Installation 
- Add `Intercom.h` and `libIntercom.a` to your Xcode project (you can get them from [GitHub](https://github.com/intercom/intercom-ios/tree/master/Intercom)). In your build target, include the `-ObjC` flag under `Other Linker Flags`. 
- Make sure you are linking the following frameworks: `ImageIO`, `MobileCoreServices`, `SystemConfiguration`, `AVFoundation`. If you get errors, check out our [Troubleshooting section here](http://docs.intercom.io/Install-on-your-mobile-product/install-the-intercom-ios-sdk#-troubleshooting-installation).
- Then go to section [Initialize Intercom and Begin Session](#initialize-intercom-and-begin-session) below.

## Initialize Intercom and Begin Session
- You'll need your Intercom App Id and the SDK API key and you can get them from your [Intercom App Settings](https://app.intercom.io/) -> API keys.  The SDK API key should start with 'ios_sdk...'. If you only see keys starting with 'ios-...', check out our [Troubleshooting section here](http://docs.intercom.io/Install-on-your-mobile-product/install-the-intercom-ios-sdk#-troubleshooting-installation).
- Initialize Intercom by calling:

    ```objc
    [Intercom setApiKey:@"ios_sdk-..." forAppId:@"your_app_id"];`
    ```

- Start a session by either calling
    ```objc
    [Intercom beginSessionForUserWithEmail:self.dataSource.email
        completion:^(NSError *error) {
            // check the error object: only if we have no error, we have an active session and we can
            // allow other Intercom calls (such as updating a user)
            if (!error) {
                // handleBeginSessionOK
            } else {
                // handleBeginSessionWithError:error
            }
    }];
    ```
or
    ```objc
    [Intercom beginSessionForUserWithUserId:self.dataSource.userId
        completion:^(NSError *error) {
            // check the error object: only if we have no error, we have an active session and we can
            // allow other Intercom calls (such as updating a user)
            if (!error) {
                // handleBeginSessionOK
            } else {
                // handleBeginSessionWithError:error
            }
    }];
    ```
And that's it. 

Was that too fast? For more detailed instructions read the [step by step install instructions here](http://docs.intercom.io/Install-on-your-mobile-product/install-the-intercom-ios-sdk).

## Developer's Advanced Guide
If you want to learn about the following topics, [you find detailed information here](http://docs.intercom.io/Install-on-your-mobile-product/configure-ios-sdk). You also find the [Intercom docset on cocoadocs](http://cocoadocs.org/docsets/Intercom).
- Updating a user
- Working with attributes
- Company Data
- Custom Attributes
- Events
- Messaging
- Deep Links

There's a document about [Using Push notifications](http://docs.intercom.io/Install-on-your-mobile-product/push-notifications-ios-sdk) and how to [Enable Secure Mode](http://docs.intercom.io/Install-on-your-mobile-product/secure-mode-ios-sdk).

## Logging
By default the Intercom iOS SDK only logs errors. By calling the class method `enableLogging`, you can increase the log level. It is recommended to use this only for debugging purposes, not the App Store build.