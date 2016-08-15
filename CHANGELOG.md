# Intercom

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
