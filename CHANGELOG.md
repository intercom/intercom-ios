## 5.4.0
###### Release Date: 09-07-2019

### New Feature 🤖

## Handle new conversations with Custom Bots to provide faster, more personal support at scale.

When a customer starts a conversation with you in the Messenger, they’ll be able to choose from suggested replies that you’ve defined. They can clarify why they’re getting in touch, and provide extra info without needing to wait for a response, or take up your team’s time.
Adding a bot to your inbound conversations enables your customers to self serve, and gives you a way to automatically collect some basic information about what your customers need, which otherwise your team would have to collect manually.
![ios-5-4-0-release](https://user-images.githubusercontent.com/663226/60925531-d3751c00-a258-11e9-9d8f-5ee7e0c5a094.PNG)

## 5.3.1
###### Release Date: 14-06-2019

### Bug Fixes
* Fixed a bug that prevented videos being dismissed in the Messenger.

## 5.3.0
###### Release Date: 29-04-2019

### New Feature 🤖

## Deliver Custom Bots to your mobile app users to unlock growth across all platforms

Custom Bots can now be targeted specifically to your mobile app users! Whether your users are on the web or mobile, Custom Bots now work cross-platform to automate and accelerate growth.

![ios-5-3-0-release](https://user-images.githubusercontent.com/3185423/56955019-2f744380-6b38-11e9-8d90-530e903cf33b.png)

Use our bots to provide better personalization at scale during critical moments of the customer lifecycle like when users first sign up for your app, or when they want to upgrade to a paid plan.

For more details on how to use Custom Bots on mobile, see our [docs here](https://www.intercom.com/help/faqs-and-troubleshooting/custom-bots/do-custom-bots-work-on-mobile).

### Bug Fixes
* Fixed a bug where the Messenger wallpaper was not tiling correctly.
* Made improvements to image loading to improve performance.
* Fixed a bug that was breaking the Messenger homescreen layout on iPad Pro 12.9"

## 5.2.1
###### Release Date: 11-02-2019

### Bug Fixes
* Fixed a bug that was preventing messenger apps from loading on the Homescreen under certain circumstances.

## 5.2
###### Release Date: 20-12-2018

### Enhancements
* Added new notifications that fire when the Intercom Help Center is being presented and dismissed. This will allow developers to take specific actions in their app when opening and closing the Help Center.

### Bug Fixes
* Improved the Messenger header wallpaper and colours so that it more closely aligns with other platforms. Added better colour handling when the selected background colour is white.
* Fixed an issue where the "We run on Intercom" link was overlapping with conversation reactions.
* The Intercom Messenger will now ignore the host app's use of  `prefersLargeTitles` to prevent the UI from being distorted.
🎅🏻

## 5.1.10  
###### Release Date: 27-11-2018

### Bug Fixes
* Fixed a bug where conversations were not always being presented when opening from push notifications.

## 5.1.9  
###### Release Date: 25-10-2018

### Enhancements
* Some minor bug fixes and compatibility updates for future releases.

## 5.1.8
###### Release Date: 02-10-2018

### Bug Fixes
* Added a fix to prevent a small number of apps briefly freezing on launch.

## 5.1.7
###### Release Date: 28-09-2018

### Enhancements
* We now provide support for Loom videos in Intercom. This feature is available to customers using SDK version 5.1.6+.

### Bug Fixes
* We fixed a bug that prevented customers being able to change a conversation rating after an initial rating selection.

## 5.1.6
###### Release Date: 14-09-2018

### Enhancements
* [AnswerBot](https://www.intercom.com/bots-for-support) support.
* This version of the Intercom iOS SDK fully supports iOS 12 and the new devices iPhone Xr, Xs & Xs Max. Recent versions of the SDK should also work, but have not been tested.
* Made some updates to colours.
* The Intercom launcher now only appears once a successful response from the server is received.
* Improved video support.

## 5.1.5
###### Release Date: 27-08-2018

### Bug fixes
* Fixed an issue that prevented videos from playing when they were embedded in a Help Center Article.
* Resolved an issue that prevented the Stripe Subscriptions Messenger App from working.
* Tapping on the "More in Help Center" link in an article suggestions card now loads the Help Center.
* Updated the title of the Help Center so that its fully localised.

## 5.1.4
###### Release Date: 15-08-2018

### Bug fixes
* Improved Home screen animations.
* Fixed a bug where articles with embedded videos were being loaded incorrectly.

## 5.1.3
###### Release Date: 27-07-2018

### Bug fixes
* Fixed layout bugs in home screen
* Fixed a bug where conversations where not shown in the home screen for some users

## 5.1.2
###### Release Date: 26-07-2018

### Bug fixes
* Improved intial loading of conversations on the home screen
* Fixed a crash that could occur on initial load

## 5.1.1
###### Release Date: 20-07-2018

### Bug fixes
* Fixed a bug that was causing a Messenger App sheet to open in Safari.
* Updated the sheet progress view colour. 🤓

## 5.1.0
###### Release Date: 19-07-2018

### Enable mobile users to help themselves with the new mobile SDK for iOS and Android 🎉 😃

The new Intercom mobile SDK brings the Messenger Home to your mobile applications. This means you can add messenger apps that allow your users to self-serve instead of starting a conversation. Users can now quickly access relevant help articles, review pinned content, and view product status in real time – all from the messenger home screen.

![ios-for-release-notes](https://user-images.githubusercontent.com/3185423/42937925-71ab4b5c-8b48-11e8-913b-88d48c9b82f3.png)

### Enhancements
We've deprecated some API methods in this release:
* `presentConversationList` - Use `presentMessenger` instead.
* `presentMessageComposerWithInitialMessage` - Use `presentMessageComposer:(nullable NSString *)initialMessage` instead.
* `presentMessageComposer` - Use `presentMessageComposer:(nullable NSString *)initialMessage` instead.

These deprecated methods will still work, but will be removed in a future release.

## 5.0.4 (2018-06-27)

### Enhancements

**Send apps in Messages** ⚡📨⚡

Messages have always been a great way to welcome, onboard, and connect with people in your product and on your website. Now with apps in your messages, you can do even more. Embed apps right inside a message to drive actions, engage your audience, and grow your business.

Whether you need to gather customer feedback, schedule a sales call, or share your latest content, apps make it easy for people to take action within the message experience. And with the targeting capabilities of Intercom, you can make sure your message reaches the right person at the right time.

## 5.0.3 (2018-06-12)

### Bug fixes
* Fixed a memory exception which caused a crash in the Intercom SDK.
* Fixed an issue where failing to get a HTTP socket connection could sometimes cause an app to freeze.

## 5.0.2 (2018-05-02)

### Bug fixes
* Fixed an issue where it was not possible to set `unsubscribedFromEmails` to false via `ICMUserAttributes`.

## 5.0.1 (2018-05-01)

### Bug fixes
* Fixed an issue where article suggestions were disappearing from a conversation
* Updated the laucnher icon colour to improve the colour contrast for some apps.

## 5.0.0 (2018-04-24)

### Enhancements
The Business Messenger reimagined.

**Messenger apps**
- Complete actions beyond chat in the Messenger seamlessly with a growing library of apps.

**Updated Design**
- Updated visual design with new wallpapers and expanded color settings

**Extendable platform**
- Create your own Messenger apps to suit your unique workflows – and enable entirely new ones.

**Messenger settings**
- New wallpapers to customize your profile.
- Set a background color for your profile and an action color for cards and chat bubbles
- Support light theme colors in your messenger.

<img src="https://user-images.githubusercontent.com/3185423/39155454-0c61c11e-474a-11e8-9471-dc4b37bf9d7c.png" width="238" height="65"/>


## 4.1.10 (2018-04-19)

### Bug Fixes
* Fixed an issue where the Help Center was not loading due to Apple's ATS restrictions requiring all URLs be HTTPS. An HTTPS URL is always now returned for the help center, even for custom domains. There is no need to whitelist your custom Help Center domain in your ATS settings.  
* Fixed and issue where Articles were not always displaying in a conversation.
* Fixed an issue where the Messenger crashed when encoding an object.
* Improved the handling of realtime socket connections.

## 4.1.9 (2018-01-24)

### Enhancements
* Move the `presentHelpCenter` method into our main API

## 4.1.8 (2017-12-20)

### Bug fixes
* Fixed [#352](https://github.com/intercom/intercom-ios/issues/352) that was causing the Help Center not to loading correctly.

## 4.1.7 (2017-12-14)

### Bug fixes

* Some minor bug fixes.

## 4.1.6 (2017-12-13)

### Bug fixes

* Fixed a build issue which caused `IntercomTranslations.bundle` to be missing from the CocoaPods archive. This meant that strings could not be loaded.

## 4.1.5 (2017-12-11)

### Enhancements

* Made performance improvements to the Messenger inbox screen
* Improved pagination on the Messenger inbox screen

### Bug fixes
* Fixed https://github.com/intercom/intercom-ios/issues/348
* Fixed https://github.com/intercom/intercom-ios/issues/340

## 4.1.4 (2017-11-29)

### Bug fixes

* Fixed https://github.com/intercom/intercom-ios/issues/328
* Fixed scrolling issue on iPhone X.

### Enhancements

* Added experimental API to present your Intercom Help Center in your app.
* Improved translations.

## 4.1.3 (2017-10-26)

* Added support for iPhone X 📱 🎉

## 4.1.2 (2017-10-11)

### Enhancements

* Added support for uploading HEIC images on iOS 11.

## 4.1.1 (2017-10-06)

### Bug fixes

* Fixed warning caused by incorrect annotation in `Intercom.h`

## 4.1.0 (2017-10-06)

### Bug fixes

* Localization improvements

### Enhancements

* Deprecate `[Intercom reset]` in favour of `[Intercom logout]`

## 4.0.3 (2017-09-20)

### Bug fixes

* Fixed issue where send button was not visibile when uploading images with a white background.
* Fixed issues relating to the composer not resizing correctly to content (fixes [#281](https://github.com/intercom/intercom-ios/issues/281)).
* Fixed inconsistent behaviour when `semanticContentAttribute` is set via `UIAppearance`.

### Enhancements

* Improved compatibility with Xcode 9 and iOS 11.

## 4.0.2 (2017-09-08)

### Enhancements

* We've enabled Operator Smart Suggestions on our Mobile Messenger. Read more about [Smart Suggestions here](https://docs.intercom.com/educating-your-customers/answer-customer-questions/let-users-help-themselves-with-smart-suggestions)

## 4.0.1 (2017-08-28)

### Bug Fixes

* Fixed an issue with Dynamic Frameworks and duplicate symbols. Fixed https://github.com/intercom/intercom-ios/issues/301
* Fixed an issue where selecting GIFs caused a crash.


## 4.0.0 (2017-08-25)

### Enhancements

* Now fully supports Xcode 9 and iOS 11.
* Removed deprecated methods.

### Bug Fixes

* Made changes to ensure that device tokens are only submitted to Intercom if push notifications are enabled. This improves push notification stats.

## 3.2.12 (2017-08-10)

### Bug Fixes

* Fixed issue where updating the user before registering could cause problems ([#288](https://github.com/intercom/intercom-ios/issues/288)).

## 3.2.11 (2017-08-04)

### Bug Fixes

* Fixed issue with "Tell us more" button for conversation ratings.

## 3.2.10 (2017-08-04)

### Bug Fixes

* Fixed issues where `setUserHash` could behave incorrectly when `reset` is called (fixes [#279](https://github.com/intercom/intercom-ios/issues/279)).
* Fixed issue where device tokens may not be deleted on `reset` if using identity verification.
* Fixed crash that could occur when exiting and re-entering a conversation after sending an image.

### Enhancements

* Added native support for conversation ratings. You can read more about conversation ratings [here](https://docs.intercom.com/responding-to-users-and-visitors/see-your-team-s-progress/measure-customer-satisfaction-with-conversation-ratings).

## 3.2.9 (2017-07-11)

### Bug Fixes

* Fixed an issue where events could be incorrectly transferred when switching users (Fixes [#276](https://github.com/intercom/intercom-ios/issues/276)).
* Fixed an edge case where registering a user immeditately after logging an event may fail.

## 3.2.8 (2017-06-30)

### Bug Fixes

* Fixed remaining issues that could occur when logging events at the same time as registration.

### Bug Fixes

## 3.2.7 (2017-06-28)

### Bug Fixes

* Fixed issue where `UIApplication` could be accessed from the main thread ([#271](https://github.com/intercom/intercom-ios/issues/271)).
* Some improvements to help track the cause of [#256](https://github.com/intercom/intercom-ios/issues/265).
* Fixed issue where logging an event immediately after registration could lead to the registration failing.
* Fixed `-[CALayer renderInContext:]` crash.

## 3.2.6 (2017-06-15)

### Bug Fixes

* Bug fixes & improvements.

## 3.2.5 (2017-05-25)

### Bug Fixes

* Fixed Bitcode issue for manual and Carthage installs ([#260](https://github.com/intercom/intercom-ios/issues/260)).

## 3.2.4 (2017-05-23)

### Bug Fixes

* Prevented Intercom's rootViewController from being set directly. Fixed [#256](https://github.com/intercom/intercom-ios/issues/256)
* Fixed a bug where setting `barStyle` on `[UINavigationBar appearance]` would cause custom app colours to spill over into Intercom's navigation search bar.
* Fixed a bug where setting the `language_override` was not working for Chinese locales.
* Fixed a bug where Chinese and Portguese locales were defaulting back to English.


## 3.2.3 (2017-05-22)

### Bug Fixes

* Bug fixes & improvements.

## 3.2.2 (2017-05-10)

### Bug Fixes

* Fixed issue where updating bottom padding using `+[Intercom setBottomPadding:]` would not immediately take effect.

## 3.2.1 (2017-05-02)

### Bug Fixes

* Fix NSNotificationCenter deadlock  [#252](https://github.com/intercom/intercom-ios/issues/252).
* Added missing translations.

## 3.2.0 (2017-04-21)

### Bug Fixes

* Fixed an issue with unread conversations not appearing if the message was received while the app was backgrounded and reopened in under a minute.
* Fixed an issue with setting the bottom padding so that in-apps will overlap with the nav bar causing a rendering issue.

### Enhancements

* Added a new method to the public API `+[Intercom setUserHash:]` to support Identity Verification with Intercom. This method deprecates the Secure Mode method `+[Intercom setHMAC:data:]`

## 3.1.5 (2017-04-14)

### Bug Fixes

* Fixed retain cycle which could cause [#248](https://github.com/intercom/intercom-ios/issues/248).
* Fixed translation for multiple snippets.
* Fixed an issue where real time may not work when moving from an unidentified to an identified user.

## 3.1.4 (2017-04-05)

### Bug Fixes

* Fixed an issue where layout could be broken for apps displayed in a right to left mode.

## 3.1.3 (2017-03-29)

### Bug Fixes

* Fixed send button issue described in [#243](https://github.com/intercom/intercom-ios/issues/243).

## 3.1.2 (2017-03-15)

### Bug Fixes

* Add `languageOverride` to `ICMUserAttributes` (Fixes [#239](https://github.com/intercom/intercom-ios/issues/239).

### Enhancements

* Add API to allow integrating Intercom push notifications manually without swizzling.
* Improved reliability of opening push notifications when using the exisiting automatic mode.

## 3.1.1 (2017-03-01)

* Added more detailed logs in cases where the Messenger cannot open due to an error.

## 3.1.0 (2017-02-27)

* Added new GIF button to the composer in the Messenger, so your users can search for and share GIFs in conversations.
* Updated image upload functionality.
* Added `ICMUserAttributes` and `+[Intercom updateUser:]` to help make updating users easier. `+[Intercom updateUserWithAttributes:]` is now deprecated.
* Improved behaviour in landscape on small devices.
* Fixed issue where errors could be logged on first launch.

## 3.0.25 (2017-02-07)

* Fixed an issue with `[Intercom enableLogging]` that caused debug logs not to be shown.
* Improved unread conversation count updating when using multiple devices at once.

## 3.0.24 (2017-01-24)

### Bug Fixes

* Updated fix for disappearing keyboard bug on iOS 8, 9 & 10 ([#209](https://github.com/intercom/intercom-ios/issues/209)).

## 3.0.23 (2017-01-20)

### Bug Fixes

* Fixed disappearing composer bug on iOS 8 described in [#209](https://github.com/intercom/intercom-ios/issues/209).
* `+[Intercom logEventWithName:metaData:]` now works even if the meta data `nil` or empty.
* Fixed issue where text was never bold in Post messages.
* Fixed Korean characters appearing in Japanese locale.
* Fixed layout issue when using external keyboards.

### Enhancements

* Made changes to ensure the warning in [#206](https://github.com/intercom/intercom-ios/issues/206) is only given in development.
* Improved selected state for message and article reactions.
* Added improved error logging.
* Additional changes to reduce network request volume.

## 3.0.22 (2016-12-16)

* Fixed crash in `-[PodIntercom_IntercomConversationInputAccessoryView updateConstraints]`.
* Fixed issue where text could be cut off in Notes or Posts.
* Some more changes to help reduce network request volume.

## 3.0.21 (2016-12-06)

* Now supports Intercom Educate. Learn more [here](https://www.intercom.com/customer-support-software/knowledge-base).
* More changes to reduce network request volume.
* Fixed crash that could occur after install in some rare cases.

## 3.0.20 (2016-11-25)

* Multiple changes to reduce network request volume.
* Small improvement to push notifications on iOS 10.

## 3.0.19 (2016-11-18)

* More clearly warn about potential [AppStore submission issues](https://developers.intercom.com/v2.0/docs/ios-installation#section-step-2-update-infoplist) on iOS 10.
* Various localisation updates.
* Many visual improvements.
* Reduce the number of network requests that are made by Intercom.

## 3.0.18 (2016-11-02)

* Reduced usage of `AFNetworking` to fix crash in [#186](https://github.com/intercom/intercom-ios/issues/186).
* Improved thread safety to increase stability.
* Fixed crash that could occur when `Intercom.bundle` is not correctly loaded.

## 3.0.17 (2016-10-19)

* Removed a reference to the UserNotifications Framework in the podspec to ensure iOS 8 & 9 compatibility

## 3.0.16 (2016-10-18)

* Reinstated push notification improvements for iOS 10 from 3.0.14.
* Store Intercom data in `PrivateDocuments` to ensure it is not visible to users through iTunes file sharing.
* Fixed issue where Intercom window may not be fully teared down when the Messenger is closed.

## 3.0.15 (2016-10-14)

* Rolled back some changes from 3.0.14 to ensure compatibility with iOS 8 & iOS 9.

## 3.0.14 (2016-10-14)

* Improved compatibility with the new `UserNotifications` framework for iOS 10 push notifications (fixes [#184](https://github.com/intercom/intercom-ios/issues/184)).

## 3.0.13 (2016-10-7)

* Added `[Intercom presentMessageComposerWithInitialMessage:]` to allow pre-populating the message composer.
* Fixed issue where you could see multiple congratulations alerts when installing Intercom (e.g. https://github.com/intercom/intercom-cordova/issues/83).
* Improvements to allow all Intercom methods to be called from any thread (fixes [#181](https://github.com/intercom/intercom-ios/issues/181)).
* Various localisation updates.

## 3.0.12 (2016-09-14)

* Improved iOS 10 compatibility.
* Fixed issue where chat bubbles could be empty in iOS 10. This was as a result of an iOS 10 bug with collection views.
* Improved localisation of the Messenger for Croation, Chinese, Korean, Catalan, Dutch, Portuguese, Portuguese Brazilian, Viatnamese.
* Various other minor bug fixes.

## 3.0.11 (2016-08-31)

* Fixed [#166](https://github.com/intercom/intercom-ios/issues/166).
* Fixed [#168](https://github.com/intercom/intercom-ios/issues/168).
* Made some improvements to the Finnish locale.

## 3.0.10 (2016-08-15)

* Removed requirement for `use_frameworks!` when installing via CocoaPods.
* Added support for APNS development push notifications. This removes the requirement to test Intercom push notifications with a production/Adhoc build.
* Fixed issue where images couldn't be uploaded on iPad in landscape.
* Fixed a formatting issue when sending a reply from the messenger.

## 3.0.9 (2016-08-08)

* Fixed issue where the Intercom may not hand back the key window correctly when closed ([#160](https://github.com/intercom/intercom-ios/issues/160)).

## 3.0.8 (2016-08-04)

* Fixed issues from [#154](https://github.com/intercom/intercom-ios/issues/154).
* Improved in-app message layout.
* Fixed issue to address an inconsistent layout of Post messages when opened from the Messenger.

## 3.0.7 (2016-08-02)

* Fixed last remaining issues from [#158](https://github.com/intercom/intercom-ios/issues/158) which could occur when your app has more than one application delegate.

## 3.0.6 (2016-08-02)

* Made updates to address issue reported in [#158](https://github.com/intercom/intercom-ios/issues/158).

## 3.0.5 (2016-07-29)

* Fixed [#155](https://github.com/intercom/intercom-ios/issues/155).

## 3.0.4 (2016-07-28)

* Added workaround for crash described in [#153](https://github.com/intercom/intercom-ios/issues/153).
* Much improved app delegate checking to fix [#147](https://github.com/intercom/intercom-ios/issues/147) and other push notification issues.

## 3.0.3 (2016-07-25)

* Fixed image upload issue from [#133](https://github.com/intercom/intercom-ios/issues/133).
* Fixed issue where cancel button could be hidden on the image upload view.
* Improve push notification handling and logging to help address [#147](https://github.com/intercom/intercom-ios/issues/147).
* Fixed remaining issue in [#145](https://github.com/intercom/intercom-ios/issues/145).

## 3.0.2 (2016-07-22)

* Fixed AppStore submission issue reported in [#146](https://github.com/intercom/intercom-ios/issues/146).

## 3.0.1 (2016-07-22)

* Fixed inconsistent appearance issue reported in [#145](https://github.com/intercom/intercom-ios/issues/145).
* Fixed crash that could occur if Intercom is incorrectly integrated in your app.
* Made improvements to push notification handling.

## 3.0.0 (2016-07-21)

Our new Messenger is out of beta! You can read all about the updated design and new functionality [here](https://www.intercom.io/in-app-messaging).
If you are upgrading from an older version of our Messenger you may want to change some of the methods you call. You can read about upgrading to the new version [here](https://docs.intercom.io/messenger-v3/upgrade-to-the-new-messenger-ios).

Many issues have been fixed, including:

* Fixed crashes reported in [#124](https://github.com/intercom/intercom-ios/issues/124).
* Fixed [#130](https://github.com/intercom/intercom-ios/issues/130).
* Improvements to push notifications which will hopefully fix issues such as [#144](https://github.com/intercom/intercom-ios/issues/144).
* Improved handling of status bar state.

## 2.3.20 (2016-05-21)

* Improved compatibility with some push notification implementations.

## 2.3.20 (2016-05-11)

* Fixed potential crash outlined in [#135](https://github.com/intercom/intercom-ios/issues/135).
* Improved reliability of push messages and opening native app URLs.

## 2.3.19 (2016-01-28)

* Added workaround for iOS issue outlined in [#117](https://github.com/intercom/intercom-ios/issues/117).
* Fixed issue where "Error loading conversation" could be shown when coming from background.

## 2.3.18 (2015-12-21)

* Added workaround for apps with incorrectly sized windows on iOS 9.

## 2.3.17 (2015-12-17)

* Fixed deep linking on some OS versions.
* Improved push notification handling.

## 2.3.16 (2015-11-27)

* Changes to help ensure API reliability.

## 2.3.15 (2015-11-20)

* Improved link & button opening behaviour. This should help [#101](https://github.com/intercom/intercom-ios/issues/101) as well as fix Facebook and Twitter buttons.

## 2.3.14 (2015-11-18)

* A small fix to help with status bar correctness and rotation.

## 2.3.13 (2015-11-18)

* Intercom now respects `supportedInterfaceOrientations` from your app's root view controller. This fixes [#102](https://github.com/intercom/intercom-ios/issues/102).
* Fixed layout issue with list items in messages.
* Fixed behaviour in some cases of iPad multitasking.
* Removed last remaining leaks from [#111](https://github.com/intercom/intercom-ios/issues/111).
* Fixed where small announcements could have the wrong layout in landscape.

## 2.3.12 (2015-11-13)

* Fixed [#72](https://github.com/intercom/intercom-ios/issues/72).
* Fixed remaining issues with [#110](https://github.com/intercom/intercom-ios/issues/110).
* Fixed memory leaks reported in [#111](https://github.com/intercom/intercom-ios/issues/111).
* Fixed memory leaks originating from `libxml`.

## 2.3.11 (2015-10-08)

* Layout changes that may help fix [#72](https://github.com/intercom/intercom-ios/issues/72).
* Several small fixes to help improve stability.

## 2.3.10 (2015-09-28)

* Fixed an issue where CPU usage could spike after closing the Intercom window.

## 2.3.9 (2015-09-24)

* Fixed an issue which could occur when Intercom is accessed across multiple threads.

## 2.3.8 (2015-09-23)

* Fix for [#97](https://github.com/intercom/intercom-ios/issues/97).

## 2.3.7 (2015-09-22)

* Fixed duplicate symbol errors seem in [#97](https://github.com/intercom/intercom-ios/issues/98).

## 2.3.6 (2015-09-22)

* Fixed Xcode 6.x compatibility (Fixes [#98](https://github.com/intercom/intercom-ios/issues/98)).
* Potential fix for [#97](https://github.com/intercom/intercom-ios/issues/97).

## 2.3.5 (2015-09-21)

* Improved support for Xcode 7 and iOS 9:
- Added Bitcode support (fixes [#90](https://github.com/intercom/intercom-ios/issues/90)).
- Improved flexible layout to support iPad multitasking in iOS 9.
- Fixed some scrolling issues in the conversation view.
- Fixed issues where some videos wouldn't load due to app transport security.
* Much simpler manual installation thanks to improved modulemap (fixes [#86](https://github.com/intercom/intercom-ios/issues/86)).
* Removed all deprecated methods including `+[Intercom registerForRemoteNotifications]`. This should hopefully stops apps from being flagged for not declaring push notification support (discussed [#88](https://github.com/intercom/intercom-ios/issues/88)).
* Landscape support for image picker.

## 2.3.4 (2015-09-18)

* Fixed issue reported in https://github.com/intercom/intercom-ios/issues/85.

## 2.3.3 (2015-08-18)

* Fixed an issue where if you had called [Intercom setMessagesHidden], opening a push notification would do nothing (fixes https://github.com/intercom/intercom-cordova/issues/12).
* Fixed an issue where the status bar sometimes did not respect your app's settings (fixes https://github.com/intercom/intercom-ios/issues/82).
* Fixed crash reported in https://github.com/intercom/intercom-ios/issues/74.

## 2.3.2 (2015-08-04)

* Fixed issue where cancel button in attachment picker sometimes did not work.
* When the Intercom window is open when coming to the foreground, it now checks for new messages.
* UIAppearance no longer interferes with the attachment picker modal.

## 2.3.1 (2015-07-20)

* Fixed issue where status bar color could be incorrect.
* Made a change to improve message delivery times for apps without real time.

## 2.3.0 (2015-06-24)

* Users can now send image attachments.
* Users can now expand and zoom images without leaving your app.
* Fixed bug where `+[Intercom reset]` could behave inconsistently (https://github.com/intercom/intercom-ios/issues/68).
* Intercom now honours `prefersStatusBarHidden` (https://github.com/intercom/intercom-ios/issues/66).
* Added `IntercomDidStartNewConversationNotification` as suggested in https://github.com/intercom/intercom-ios/issues/67.
* Ensure sessions are ended when your app is backgrounded.
* Renamed certs to fix https://github.com/intercom/intercom-cordova/issues/5.
* Improved support for CocoaPods Frameworks.
* Added nullability modifiers to Intercom.h for improved Swift compatibility.

## 2.2.4 (2015-05-28)

* Fixed an issue where opening a push might not open the Intercom message if the app is in the background in some cases.

## 2.2.3 (2015-05-12)

* Less confusing logging. Sometimes logs showed error messages when there wasn't anything wrong.
* No longer throw an exception if `Intercom.bundle` is missing.
* Some changes to allow recovery of duplicated users in Intercom.

## 2.2.2 (2015-05-08)

* If you have real-time features on your Intercom account, users can now see when you are typing a reply.
* Several visual updates to the conversation view.
* More detailed logging to help us debug any issues you may have.
* No longer requires `-ObjC` linker flag for easier integration.
* iPad improvements.
* Sounds for sending and receiving messages.
* Now supports tracking users across multiple environments. Fixed https://github.com/intercom/intercom-ios/issues/61.
* Removed message responder.
* Fixed issue where opening a push notification didn't always open the message in Intercom.
* Lots more tweaks and bug fixes.

## 2.2.1 (2015-03-03)

* Added support for closing the SDK’s UI when calling `+setMessagesHidden:` and `+reset`. If any part of the SDK is open when these are called, it will now close.
* Fixed #52: Removed firstResponder swizzle completely, fixing https://github.com/intercom/intercom-ios/issues/52.
* Fixed #58: Checking for isValidJSONObject on user attributes and event metadata, fixing https://github.com/intercom/intercom-ios/issues/58.

## 2.2 (2015-03-23)

* Now supports real-time, including real-time message delivery, support for the custom message responder,
and user presence and is-typing events are sent from the SDK and visible to admins in the Intercom app.
Learn more at https://www.intercom.io/real-time-messaging
* Fixed a display bug in the conversation list where the wrong name could be shown.
* Fixed bug which could cause the wrong number to be displayed in the unread counter within a conversation.
* Fixed an issue where retrying the sending of a message could sometimes fail.
* Fixed a race condition that meant sometimes a new user could not be registered after [Intercom reset] was called.

## 2.1.1 (2015-03-10)

* Modified the podspec and repo structure to hopefully address some cocoapod related install errors.

## 2.1 (2015-03-02)

* Fixed a situation where the SDK could potentially have authentication issues with the Intercom API.
* Improved session handling in the SDK.
* Eliminated the SDK's reliance on the async nature of sessions.
* Clearer API particularly around user registration.
* Clearer push notification handling instructions.

## 2.0.7 (2014-12-19)

* Added deep linking (custom URL schemes)
* Added notification preview
* Several other bug fixes and improvements

## 2.0.6 (2014-11-14)

* Improved handling of Intercom SDK push notifications
* Show an SDK error screen if the Message Composer/Conversation List has been opened without credentials
* Fixed an issue where the notification view sometimes did not disappear after the message has been read by the user
* Improved and documented error codes returned by SDK calls
* Fixed an issue where the navigation bar items became unresponsive when the host app was compiled with iOS 7 Base SDK
* Several other minor bug fixes and improvements

## 2.0.5 (2014-10-24)

* General stability improvements (fixed several scenarios that could crash the host app)
* Fixed inconsistencies caused by refreshing data (items in conversation list and unread badge)
* Fixed an issue where the navigation bar items became unresponsive on iOS 7 landscape-only apps
* Several other minor bug fixes and improvements

## 2.0.4 (2014-09-30)

* Fixed .podspec because it started failing in cocoapods 0.34.X (NO CHANGES MADE IN CODE)

## 2.0.3 (2014-09-19)

* Added missing architecture armv7s.

## 2.0.2 (2014-09-18)

* Fixed dependency on Metal framework in Xcode 5.

## 2.0.1 (2014-09-18)

* Added support for iOS 8 (including remote notifications).
* Fixed playing of videos on iOS 8 and issues with device rotation.
* Fixed issue where SDK events where not delivered if sent immediately before opening the inbox.
* UI improvements.
* Other bug fixes.

## 2.0.0 (2014-08-26)

* New release of the Intercom iOS SDK - see details here https://www.intercom.io/in-app-messaging.

## 1.1.9 (2014-08-05)

* Added completion blocks to session calls to help with race conditions when creating new users.
* This is the final build supporting iOS 6, a new SDK is being launched that will deprecate this one.

## 1.1.8 (2014-05-11)

* Fixes an issue where messages might attempt to show multiple times instead of just once.
* Bug fixes for iPad display modes.

## 1.1.6 (2014-01-07)

* Fixes problems where the text input view in the composer was extending out of bounds while on display. It should now contain and scroll correctly.
* Also fixes a problem where by the composer would launch from UIActionSheets or UIAlertViews in iOS 7.

## 1.1.5 (2013-11-13)

* A more natural message composer in iOS 6 and iOS 7 with customisable keyboard, title and bar color options.
* New message composer callbacks and easier control for dismissing the composer.
* Fixes a problem where not having a name on Intercom crashed the SDK.
* Arm64 support.

## 1.1.4 (2013-10-04)

* Fixes issue with duplicate users being created with email addresses equal to user_ids.

## 1.1.3 (2013-09-16)

* Fixes issue with email and user_id (https://github.com/intercom/intercom-ios/issues/12)
* Added support for optional logging (https://github.com/intercom/intercom-ios/issues/11)

## 1.1.2 (2013-09-10)

* iOS 7 Support
* Fix for when messages appear offset by 20 pixels (see documentation).

## 1.1.1 (2013-08-19)

* Bug fixes for iPad screen display
* Improved logged so message display is clearer
* Smaller under the hood bug fixes around dismissing messages on session end.

## 1.1 (2013-08-14)

* Include support for messaging.

## 1.0.1 (2013-02-27)

* Fix session attempting to restart after `endSession` had been called.

## 1.0 (2013-02-05)

* Intercom iOS SDK 1.
