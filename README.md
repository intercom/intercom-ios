# Intercom iOS SDK [Beta]
This is a **beta** release of the Intercom iOS SDK. As such it is subject to modification without notice. The Intercom iOS SDK currently supports **iOS 5.0 and greater**. Support for landscape orientation in iPhone and iPod touch apps will follow shortly.

##Installation

1. Copy `Intercom.h` and `libIntercom.a` to your Xcode project and be sure to include `Intercom.h` in your precompiled header (.pch) file. The library is a fat binary, so will work on both the iOS simulator and devices. 
2. Under your target's build settings in Xcode, include the `-ObjC` & `-all_load` flags under `Other Linker Flags`.
![Linker flags](http://d.pr/i/bRsu+)
3. Include the `QuartzCore` framework in your app
![Quartz](http://d.pr/i/ZgWp+)

###Initialize Intercom

In order to initialize Intercom in your iOS app, copy your iOS API key and App ID from the [api keys page](http://d.pr/i/Jowr+) of your app and add the following line to your application delegate:

```
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch
    [Intercom setApiKey:@"your-api-key" forAppId:@"your-app-id"];
    
    return YES;
}
```

###Begin a session
Intercom only tracks users who are logged in to your app.  With this in mind, you should begin a session for a user at the point in your app where authentication is confirmed.  Don't worry if Intercom hasn't seen a user before, that user will be created in Intercom when the session begins.

There are three ways to begin a session, depending on the information available to you.

1. **Email address.**  You can begin a session with a user's email address simply by using the following method at the point where your app successfully authenticates a user;   
`[Intercom beginSessionForUserWithEmail:adam@intercom.io];`

2. **UserId.** The same can be accomplished if you don't have a user's email address but you might have another unique identifier you are already sending to Intercom.  If this is the case, you could use the following;  
`[Intercom beginSessionForUserWithUserId:@"12345"];`

3. **Both.** Should you have an ID you would like to couple with an email address, you can send them both;  
`[Intercom beginSessionForUserWithUserId:@"12345" andEmail:@"adam@intercom.io"];`

Once a session has begun, Intercom will track UIApplication state changes for you, so you won't need to explicity start and stop a session. Start on login and end on logout, we'll do the rest.
	
###End a session
End a session when your user successfully logs out of your application by adding `[Intercom endSession];` at that point.

##Working with attributes
You can send any data you like to Intercom. Typically our customers see a lot of value in sending data that relates to customer development, such as price plan, value of purchases, etc. Once these have been sent to Intercom you can then apply filters based on these attributes. Full details are available [here](http://woody.intercom.io/docs/sdk/ios/1.1.5/Classes/Intercom.html#task_Working%20with%20attributes).

####Incrementing attributes
Attributes can be simply sent as strings that are auto incremented for you. The example below will add a value of `1` to the attribute `sent_support_request` every time it is received.

`[Intercom incrementAttribute:@"sent_support_request"];`

You do not have to create attributes in Intercom before hand. If one hasn't been seen before, it will be created for you.

####Custom attributes
You can send a `NSDictionary` containing multiple attributes also. Note that attribute values may be either a `string`, `integer`, `double`, `unix timestamp` or `bool`. Note the syntax of incremental attributes in the following example:

`[Intercom updateAttributes:@{ @"increments" : @{ @"made_in_app_purchase" : @1 }, @"last_purchase_date" : @12345678 }];`

##Messaging
With the iOS SDK you can now send and receive messages from within your iPhone and iPad apps once you are on a [messaging plan](https://www.intercom.io/pricing).  The Intercom SDK requires that you have a `rootViewController` at the end of application launch in order to use messaging features.

#### How does it work

Reaching out to users through Intercom couldn't be simpler. There are two message types that can be sent to iOS users: Conversation types and Notification types. These can be sent as either a [manual message](http://woody.intercom.io/docs/sdk/ios/1.1.5/#ManualMessages) to one or more users or as an [Auto Message](http://woody.intercom.io/docs/sdk/ios/1.1.5/#AutoMessages) where a user qualifies for the message via a segment.

With auto messages you can set iOS specific segments like iOS session count or any attribute you choose to report to Intercom in your app.

![Segments](http://d.pr/i/XhLi+)

Preview your message as you type by selecting the mobile icon on the right of the message composer. Click save and turn your message live when you're happy with it. 

![Preview](http://d.pr/i/xxyg+)

Users will receive any messages sent specifically to them (manual message), or that they meet the criteria for (Auto Message). 

Any messages not delivered in your iOS apps may still be received by the same user in your web app, should you have one. We will later add the ability to send messages to iOS users only. 

####Customising message appearance
By default, the iOS SDK reads the message box color that is set from within Intercom. To change the color: Log into Intercom, go to your app's "message box color" settings page, and set your color of choice.

![iPhone](http://d.pr/i/1zr5+)
![Reply](http://d.pr/i/4LYK+)
![iPad](https://github-camo.global.ssl.fastly.net/dd6f10866e3cb16756c4d31e9e91c18361e04645/687474703a2f2f642e70722f692f4a6b6b742b)

####Receiving messages from Intercom
Messages from Intercom are delivered, if present, in response to every request from the SDK. If you aren't sending any attributes then messages will be fetched on session start. When a message is opened by touching it or sliding it upwards, a reply box will appear.

####Letting your users contact you
Enabling users send messages to Intercom from your app is easy.  By calling `showNewMessageComposerWithTitleColor:barColor:keyboardAppearance:success:failure:` inside the action of a button or table cell for example, the new message composer appears.

![Composer](http://d.pr/i/MNL3+)


##Logging
By default the Intercom iOS SDK has logging disabled. Should you wish to enable it, simply call `[Intercom loggingEnabled:YES];` in your application's `didFinishLaunchingWithOptions:` method.


##Documentation
Full documentation for the SDK is available [here](http://woody.intercom.io/docs/sdk/ios/1.1.5/Classes/Intercom.html).

##License
Licensed under the Apache License, Version 2.0. Copyright (c) 2013 Intercom, Inc. All rights reserved.

![Smaller](https://d2nvy5xhcrv86v.cloudfront.net/assets/emails/v01/mail-logo-143d4547a151e7cb9e1571a633ecbb4b.png)
