# Intercom iOS SDK [Beta]
This is a **beta** release of the Intercom iOS SDK.  As such it is subject to modification without notice.

##Installation

Copy `Intercom.h` and `libIntercom.a` to your Xcode project and add be sure to include `Intercom.h` in your precompiled header (.pch) file. The library is a fat binary, so will work on both the iOS simulator and devices.  

###Initialize Intercom

In order to initialize Intercom in your iOS app, copy your iOS API key and App ID  from [here](https://www.intercom.io/apps/tx2p130c/api_keys) and add the following line to your application delegate:

```
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch
    [Intercom setApiKey:@"API-KEY" forAppId:@"APP-ID"];
    
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
3. **Both.** Should you have both an ID you would like to couple with an email address, you can send them both;  
`[Intercom beginSessionForUserWithUserId:@"12345" andEmail:@"adam@intercom.io"]`

Once a session has begun, Intercom will track UIApplication state changes for you, so you won't need to explicity start and stop a session. Start on login and end on logout, we'll do the rest.
	
###End a session
End a session when your user successfully logs out of your application by adding `[Intercom endSession]` at that point.

##Working with attributes
You can send any data you like to Intercom. Typically our customers see a lot of value in sending data that relates to customer development, such as price plan, value of purchases, etc. Once these have been sent to Intercom you can then apply filters based on these attributes. Full details are available [here](http://docs.intercom.io/intercom-ios/Classes/Intercom.html#task_Working%20with%20attributes).

####Incrementing attributes
Attributes can be simply sent as strings that are auto incremented for you. The example below will add a value of `1` to the attribute `sent_support_request` every time it is received.

`[Intercom incrementAttribute:@"sent_support_request"];`

You do not have to create attributes in Intercom before hand. If one hasn't been seen before, it will be created for you.

####Custom attributes
You can send a `NSDictionary` containing multiple attributes also. Note that attribute values may be either a `string`, `integer`, `double`, `unix timestamp` or `bool`. Note the syntax of incremental attributes in the following example:

`[Intercom updateAttributes:@{ @"increments" : @{ @"made_in_app_purchase" : @1 }, @"last_purchase_date" : @12345678 }];`


##Documentation
Further details are available in the [documentation for the iOS SDK](http://docs.intercom.io/intercom-ios/Classes/Intercom.html).

##License
Licensed under the Apache License, Version 2.0. Copyright (c) 2013 Intercom, Inc. All rights reserved.

![Smaller](https://d2nvy5xhcrv86v.cloudfront.net/assets/emails/v01/mail-logo-143d4547a151e7cb9e1571a633ecbb4b.png)