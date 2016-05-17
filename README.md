# Intercom for iOS

## Requirements
Intercom for iOS supports iOS 7.x, iOS 8.x and iOS 9.x.

## Installation

### CocoaPods
Add the Intercom pod into your Podfile and run `pod install`.

	pod 'Intercom'

### Manual Installation

[Download Intercom for iOS](https://github.com/intercom/intercom-ios/archive/master.zip) and use Finder to drag `Intercom.framework` and `Intercom.bundle` into your Xcode project, ticking the "Copy items if needed" checkbox.

##Sample app

To use the sample app:

1. Go to the `Sample` directory and run `pod install`.
2. Open `Sample.xcworkspace` in Xcode.
3. Set your iOS API key and App ID at the top of `ITCAppDelegate.m`.
4. Build and run.

##How should I use Intercom for iOS in my app?
Broadly speaking, there are three types of apps that Intercom for iOS will work in.

1. Apps that only have registered users, like Facebook, Instagram or Slack. Your users have to log in straight away in order to use your app. [Show me how.](https://github.com/intercom/intercom-ios#my-app-only-has-logged-in-users)
2. Apps that never log users in, like Threes Game or Angry Birds or the iOS Notes app. Your users never have to log in to use your app. [Show me how.](https://github.com/intercom/intercom-ios#my-apps-users-never-log-in)
3. Apps that support both logged in and logged out users, like Google Maps or Youtube. [Show me how.](https://github.com/intercom/intercom-ios#my-app-has-logged-in-and-logged-out-users)

###Import Intercom

Make sure to use `@import Intercom;` in every file you want to use Intercom.

### Initialize Intercom
No matter what category of app you have, you'll need your Intercom app id and the iOS API key that can be found on the [Intercom App Settings](https://app.intercom.io/) page in the API keys section. Once you've found those keys, initialize Intercom by calling the following in your application delegate:

	- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
		// Initialize Intercom
    	[Intercom setApiKey:@"<#your_ios_api_key#>" forAppId:@"<#your-app-id#>"];
	}

###My app only has logged in users
1. Firstly, on successful completion of your authentication method in your login view controller you will need to register your user.

		- (void)successfulLogin {
			...
			// Registering with Intercom is easy. For best results, use a unique user_id if you have one.
			[Intercom registerUserWithUserId:@"<#123456#>"];
		}
**Note:** _If you don't have a unique `userId` to use here, or if you have a `userId` and an `email` you can [register with those too](https://github.com/intercom/intercom-ios/blob/master/Intercom.framework/Versions/A/Headers/Intercom.h#L152)._

2. Also, in your application delegate's `didFinishLaunchingWithOptions:` method (or wherever you _check_ your user's authenticated state when your app starts up)

		// Override point for customization after application launch.
			if(loggedIn){
				...
				// We're logged in, we can register the user with Intercom
				[Intercom registerUserWithUserId:@"<#123456#>"];

				// Carry on as normal
				...
			}
		}

3. Finally, when users eventually want to log out of your app, we should clear Intercom for iOS's caches so that when they log back in again, everything works perfectly. In your logout code, simply call `[Intercom reset];` like so:

		- (void)logout {
			...
			// This reset's the Intercom integration's cache of your user's identity and wipes the slate clean.
			[Intercom reset];
		}

###My apps users never log in

1. If you only have unidentifed users in your app then your integration is only one line. Just register an unidentified user in your application's delegate like so:

		- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
			...
			// This registers an unidentifed user with Intercom.
			[Intercom registerUnidentifiedUser];
			...
		}

Because Intercom listens for UIApplication start notifications, there is no need to have this line of code anywhere else. Intercom will track all of your user sessions for you.

###My app has logged in and logged out users

1. Firstly, on successful completion of your authentication method in your login view controller you will need to register your user.

		- (void)successfulLogin {
			...
			// Registering with Intercom is easy. For best results, use a unique user_id if you have one.
			[Intercom registerUserWithUserId:@"<#123456#>"];
		}
**Note:** _If you don't have a unique `userId` to use here, or if you have a `userId` and an `email` you can [register with those too](https://github.com/intercom/intercom-ios/blob/master/Intercom.framework/Versions/A/Headers/Intercom.h#L152)._

2. In your application delegate's `didFinishLaunchingWithOptions:` method (or wherever you _check_ your user's authenticated state when your app starts up)

		- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
			if(loggedIn){
				...
				// We're logged in, we can register the user with Intercom
				[Intercom registerUserWithUserId:@"<#123456#>"];

			} else {
				// Since we aren't logged in, we are an unidentified user. Lets register.
				[Intercom registerUnidentifiedUser];
			}
		}

3. Finally, when users eventually want to log out of your app, we should clear Intercom for iOS's caches so that when they log back in again, everything works perfectly. In your logout code, simply call `[Intercom reset];` like so:

		- (void)logout {
			...
			// This reset's the Intercom integration's cache of your user's identity and wipes the slate clean.
			[Intercom reset];

			// Now that you have logged your user out and reset, you can register a new
			// unidentified user in their place.
			[Intercom registerUnidentifiedUser];
		}


###Tips on getting the best out of the Intercom for iOS

1. **Do not use an email address as a `userId` as this field is unique and cannot be changed or updated later.** If you only have an email address, you can just register a user with that. [More details are available here](https://github.com/intercom/intercom-ios/blob/master/Intercom.framework/Versions/A/Headers/Intercom.h#L168).
2. **If you register users with an email address, email must be a unique field in your app.** Otherwise we won't know which user to update and the mobile integration won't work.
3. Intercom for iOS listens for when your app starts and stops, so all you need to do is register a type of user like the examples above and we'll do the rest.


## How does the in-app messenger work?

Intercom allows you to send messages to your users while also enabling your users send messages to you. If you have a dedicated button in your app that you wish to hook the new message composer up to, you can control Intercom's messaging UI via the `[Intercom presentMessageComposer];` and `[Intercom presentConversationList];` methods. More information on messaging with Intercom for iOS can be found [here](http://docs.intercom.io/Install-on-your-mobile-product/configuring-intercom-for-ios#messaging).

## What about events, push notifications, company and user data?

Intercom for iOS has support for all these things. For full details please read our [documentation](http://docs.intercom.io/Install-on-your-mobile-product/configuring-intercom-for-ios).


## I'm using a previous version and this looks different, what's changed?

We have re-architected Intercom for iOS to ensure it is as reliable as possible while tracking your users. We have focused on removing the asychronous behaviour of Intercom for iOS, for example you no longer need to wait for the completion blocks of the now deprecated `beginSession` calls before logging events or updating user data.  In doing so it is more nimble and reliable than ever before.

Previous versions of Intercom for iOS will migrate with minimal effort. All deprecated methods still work for now, excluding the old session listener (since v2.0.6). These deprecated methods will be permanently removed in a future version.

## Documentation and getting started guides

Detailed documentation and getting started guides for:

- Updating a user
- Working with attributes
- Company Data
- Custom Attributes
- Events
- Messaging
- Deep Linking in messages

are available in [our documentation](https://docs.intercom.io/configuring-for-your-product-or-site/configuring-intercom-for-ios). Please contact us in Intercom with any questions you may have, we're only a message away!

## Xcode Documentation

This documentation provides integrated help in Xcode for all public APIs in Intercom for iOS. [Download the docset](https://github.com/intercom/intercom-ios/archive/master.zip) from the repository above and Copy the content into ~`/Library/Developer/Shared/Documentation/DocSets`.


## Migrating to the latest version of the SDK

Migrating to the latest version of the iOS SDK should be a very straight forward and worthwhile process. There are two main ways you can update your SDK library version in your app.

1. Run `pod update Intercom` from the root of you Xcode project where your *Podfile* lives.
2. Download the latest binary version of the SDK and include it in your app's dependency library directory.

As the SDK has evolved some method signatures have changed but their purpose has stayed the same. Here is a list of some of the more commonly used methods and their new names:

<table>
	<tr><th colspan="3" style="text-align:center;">iOS Method Name Changes</th></tr>
	<tr><td style="text-align:center; font-weight: bold; width: 33.3%;">Old Name</td><td style="text-align:center; font-weight: bold; width: 33.3%;">Type</td><td style="text-align:center; font-weight: bold; width: 33.3%;">New Name</td></tr>
	<tr><td colspan="3" style="text-align:center; font-weight: bold;">From SDK version 2.0.x to 2.3.21</td></tr>
	<tr><td>beginSessionForUserWithUserId</td><td>Name change. Dropped block parameter.</td><td>registerUserWithUserId</td></tr>
	<tr><td>beginSessionForUserWithEmail</td><td>Name change. Dropped block parameter.</td><td>registerUserWithEmail</td></tr>
	<tr><td>beginSessionForAnonymousUserWithCompletion</td><td>Name change. Dropped block parameter.</td><td>registerUnidentifiedUser</td></tr>
	<tr><td>updateUserWithAttributes</td><td>Dropped block parameter.</td><td>n/a</td></tr>
	<tr><td>logEventWithName</td><td>Dropped block parameter.</td><td>n/a</td></tr>
	<tr><td colspan="3" style="text-align:center; font-weight: bold;">From SDK version 1.x.x to 2.3.21</td></tr>
	<tr><td>beginSessionForUserWithUserId</td><td>Name change. Dropped block parameter.</td><td>registerUserWithUserId</td></tr>
	<tr><td>beginSessionForUserWithEmail</td><td>Name change. Dropped block parameter.</td><td>registerUserWithEmail</td></tr>
	<tr><td>updateAttributes</td><td>Name change. Dropped block parameter.</td><td>updateUserWithAttributes</td></tr>
</table>
