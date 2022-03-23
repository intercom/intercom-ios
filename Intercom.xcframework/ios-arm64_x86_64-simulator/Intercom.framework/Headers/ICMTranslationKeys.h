//
//  ICMTranslationKeys.h
//  IntercomSDK
//
//  Created by Ignacio Delgado on 21/08/2014.
//  Copyright (c) 2014 Intercom. All rights reserved.
//

#ifndef IntercomSDK_ICMTranslationKeys_h
#define IntercomSDK_ICMTranslationKeys_h

#pragma mark - Strings
static NSString *const kICMTKNavBarTitleConversations                   = @"conversations_with_app_two_lines";
static NSString *const kICMTKNavBarTitleConversationsNoAppName          = @"conversations";
static NSString *const kICMTKActionSheetMessageFailDelivery             = @"failed_delivery";
static NSString *const kICMTKActionSheetCancel                          = @"cancel";
static NSString *const kICMTKActionSheetDelete                          = @"delete";
static NSString *const kICMTKMessageStateSending                        = @"message_state_sending";
static NSString *const kICMTKFacebookLikeUs                             = @"facebook_like";
static NSString *const kICMTKTwitterFollowUs                            = @"twitter_follow";
static NSString *const kICMTKSendUsAMessage                             = @"send_us_a_message";
static NSString *const kICMTKNavBarTitleNewConversation                 = @"new_conversation";
static NSString *const kICMTKConversationHasEnded                       = @"conversation_has_ended";
static NSString *const kICMTKErrorLoadingConversation                   = @"error_loading_conversation";
static NSString *const kICMTKErrorNoConversationsTitle                  = @"no_conversations";
static NSString *const kICMTKErrorNoConversationsMessage                = @"empty_conversations";
static NSString *const kICMTKErrorNoConversationsMessageNoAppName       = @"error_no_conversations_message_no_app_name";
static NSString *const kICMTKErrorTitle                                 = @"inbox_error_state_title";
static NSString *const kICMTKErrorLoadingConversationsFallback          = @"failed_to_load_conversation_with_admin";
static NSString *const kICMTKErrorLoadingConversationsFallbackNoAppName = @"failed_to_load_conversation";
static NSString *const kICMTKErrorStartingConversationFallback          = @"start_conversation_error";
static NSString *const kICMTKErrorTapToRetry                            = @"retry";
static NSString *const kICMTKMessageViewPlaceholderWriteAReply          = @"reply_to_conversation";
static NSString *const kICMTKMessageViewPlaceholderStartAConversation   = @"start_conversation";
static NSString *const kICMTKMessageViewSend                            = @"send";
static NSString *const kICMTKWeRunOnIntercom                            = @"we_run_on_intercom";
static NSString *const kICMTKTimeDifferenceJustNow                      = @"time_just_now";
static NSString *const kICMTKAlertNewSDKUserTitle                       = @"congratulations";
static NSString *const kICMTKAlertNewSDKUserMessage                     = @"alert_new_sdk_user_message";
static NSString *const kICMTKThankYou                                   = @"thank_you";
static NSString *const kICMTKLastActiveLast15Minutes                    = @"active_15m_ago";
static NSString *const kICMTKLastActiveLastXMinutes                     = @"active_minute_ago";
static NSString *const kICMTKLastActiveOver1WeekAgo                     = @"active_week_ago";
static NSString *const kICMTKAdminActive                                = @"active_state";
static NSString *const kICMTKAdminAway                                  = @"away_state";
static NSString *const kICMTKBack                                       = @"navigation_back";
static NSString *const kICMTKClose                                      = @"close";
static NSString *const kICMTKTryAgain                                   = @"try_again";
static NSString *const kICMTKTimeLocationFormat                         = @"profile_location";
static NSString *const kICMTKDelivered                                  = @"delivered";
static NSString *const kICMTKMessageSeen                                = @"message_seen";
static NSString *const kICMTKMessageNotSeen                             = @"message_unseen";
static NSString *const kICMTKInboxYou                                   = @"you";
static NSString *const kICMTKCameraRoll                                 = @"camera_roll";
static NSString *const kICMTKPlustMore                                  = @"plus_x_more";
static NSString *const kICMTKNameAnd1Other                              = @"name_and_1_other";
static NSString *const kICMTKNameAndXOthers                             = @"name_and_x_others";
static NSString *const kICMTKAlsoInThisConversation                     = @"also_in_this_conversation";
static NSString *const kICMTKRateYourConversation                       = @"rate_your_conversation";
static NSString *const kICMTKTellUsMore                                 = @"tell_us_more";
static NSString *const kICMTKYouRatedTheConversation                    = @"you_rated_the_conversation";
static NSString *const kICMTKThanksForLettingUsKnow                     = @"thanks_for_letting_us_know";
static NSString *const kICMTKOkay                                       = @"ok_description";
static NSString *const kICMTKCouldntLoadContent                         = @"couldnt_load_content";
static NSString *const kICMTKGiveItAnotherTry                           = @"give_it_another_try";
static NSString *const kICMTKReload                                     = @"reload";
static NSString *const lICMCouldntCompleteAction                        = @"couldnt_complete_action";
static NSString *const kICMYourConversations                            = @"your_conversations";
static NSString *const kICMStartAConversation                           = @"start_a_conversation";
static NSString *const kICMStartAnotherConversation                     = @"start_another_conversation";
static NSString *const kICMSeePastConversations                         = @"see_past_conversations";
static NSString *const kICMSeeAll                                       = @"see_all";
static NSString *const kICMTKAskAQuestion                               = @"ask_a_question";
static NSString *const kICMTKHowCanWeHelp                               = @"how_can_we_help";
static NSString *const kICMTKTellUsWhatYouNeed                          = @"tell_us_what_you_need";
static NSString *const kICMSeeAllYourConversations                      = @"see_all_conversations";


#pragma mark - Formats
static NSString *const kICMTKParticipantFromAppFormat                   = @"teammate_from_company";
static NSString *const kICMTKReplyFromParticipantFormat                 = @"reply_from_admin";
static NSString *const kICMTKTimeDifferenceFormatWeeksAgo               = @"time_week_ago";
static NSString *const kICMTKTimeDifferenceFormatDaysAgo                = @"time_day_ago";
static NSString *const kICMTKTimeDifferenceFormatHoursAgo               = @"time_hour_ago";
static NSString *const kICMTKTimeDifferenceFormatMinutesAgo             = @"time_minute_ago";
static NSString *const kICMTKLastActiveFormatHoursAgo                   = @"active_hour_ago";
static NSString *const kICMTKLastActiveFormatDaysAgo                    = @"active_day_ago";

static NSString *const kICMTKArticleQuestion                            = @"article_question";
static NSString *const kICMTKArticleReaction                            = @"article_response";
static NSString *const kICMTKAskedAbout                                 = @"asked_about";
static NSString *const kICMTKErrorLoadingArticle                        = @"article_load_error";

static NSString *const kICMTKHelpCenter                                 = @"help_center";
static NSString *const kICMTTeamCanHelp                                 = @"the_team_can_help_if_needed";
static NSString *const kICMTKBotExpectation                             = @"bot_expectation_text";
static NSString *const kICMTKLoading                                    = @"loading";
static NSString *const kICMTKSearchHelpArticles                         = @"search_help_articles";
static NSString *const kICMTKArticleSearchHint                          = @"article_search_hint_text";
static NSString *const kICMTKSearchBrowseEmptyState                     = @"search_browse_empty_state_text";
static NSString *const kICMTKGetHelp                                    = @"get_help";
static NSString *const kICMTKGrinningFaceBigEyesEmoji                   = @"grinning_face_with_big_eyes_emoji";
static NSString *const kICMTKNeutralFaceEmoji                           = @"neutral_face_emoji";
static NSString *const kICMTKDisappointedFaceEmoji                      = @"disappointed_face_emoji";
static NSString *const kICMTKBrowseAllHelpTopics                        = @"browse_all_help_topics";
static NSString *const kICMTKSearchForHelp                              = @"search_for_help";

#pragma mark - Photos
static NSString *const kICMTKNoPhotos                                   = @"no_photos";
static NSString *const kICMTKNoPhotosOnDevice                           = @"no_photos_on_device";
static NSString *const kICMTKAccessPhotos                               = @"access_photos";
static NSString *const kICMTKPermissionSettings                         = @"access_device_settings";
static NSString *const kICMTKEnablePermissions                          = @"go_to_settings";

#pragma mark - GIFs
static NSString *const kICMTKSearchGIFs                                 = @"search_gif";
static NSString *const kICMTKNoGIFsFoundTitle                           = @"no_gifs_found";
static NSString *const kICMTKNoGIFsFoundMessage                         = @"no_gifs_matching_query";
static NSString *const kICMTKImageAttribution                           = @"gif_attribution";
static NSString *const kICMTKGIFErrorTitle                              = @"gifs_load_error";
static NSString *const kICMTKGIFErrorDescription                        = @"try_again_minute";

#pragma mark - Attribute Collector Picker submit
static NSString *const kICMAttributeColelctorSubmitButton               = @"submit";

#pragma mark - Input placeholders
static NSString *const kICMTKListPlaceholder                            = @"choose_one";
static NSString *const kICMTKDatePlaceholder                            = @"choose_the_date";

#pragma mark - Input Validation
static NSString *const kICMTKInvalidEmail                               = @"that_email_address_doesnt_look_quite_right";
static NSString *const kICMTKInvalidNumber                              = @"that_number_doesnt_look_quite_right";
static NSString *const kICMTKInvalidString                              = @"string_is_incorrect";
static NSString *const kICMTKSomethingWentWrongTryAgain                 = @"something_went_wrong_try_again";

static NSString *const kICMTKInvalidCountryCode                         = @"that_country_code_doesnt_look_quite_right";
static NSString *const kICMTKInvalidNumberTooManyDigits                 = @"that_number_has_too_many_digits";
static NSString *const kICMTKInvalidNumberMissingDigits                 = @"that_number_is_missing_a_few_digits";
static NSString *const kICMTKInvalidMissingPrefix                       = @"that_number_needs_a_prefix";

#pragma mark - Attribute Collector
static NSString *const kICMTKYes                                        = @"attribute_collector_positive";
static NSString *const kICMTKNo                                         = @"attribute_collector_negative";

#pragma mark - In Apps Quick Replies
static NSString *const kICMTKReply                                      = @"reply";

#pragma mark - Carousels/Articles On Buttons
static NSString *const kICMTKPageNotFound                               = @"page_not_found";


#pragma mark - Homescreen
static NSString *const kICMTKContinueConversation = @"continue_the_conversation";
static NSString *const kICMTKNothingToSeeHereYet = @"nothing_to_see_here_yet";
static NSString *const kICMTKNoMessagesFromTeam = @"no_messages_from_the_team";
static NSString *const kSuggestedArticles = @"suggested_articles";

#pragma mark - Surveys
static NSString *const kICMTKNext = @"surveys_next_button";
static NSString *const kICMTKDone = @"surveys_done_button";
static NSString *const kICMTKMultiSelectOtherOptionPleaseSpecify = @"surveys_multiselect_other_option";
static NSString *const kICMTKMultiSelectPleaseSpecifyOther = @"surveys_multiselect_other_option_input_label";
static NSString *const kICMTKStartTypingPlaceholder = @"surveys_multiselect_other_option_input_placeholder";
static NSString *const kICMTKOther = @"surveys_multiselect_other_option_value";
static NSString *const kICMTKSurveysTextInputQuestionPlaceholder = @"surveys_text_input_question_placeholder";
static NSString *const kICMTKSurveysRequiredResponse = @"surveys_required_response";
static NSString *const kICMTKSurveysResponseTooLong = @"surveys_response_too_long";
static NSString *const kICMTKSurveysResponseTooShort = @"surveys_response_too_short";
static NSString *const kICMTKSurveysMultiSelectTooManyResponses = @"surveys_multi_select_too_many_responses";
static NSString *const kICMTKSurveysMultiSelectTooFewResponses = @"surveys_multi_select_too_few_responses";
static NSString *const kICMTKSurveysDismissConfirmation = @"dismiss_survey_confirmation";
static NSString *const kICMTKSurveysContinue = @"surveys_continue";
static NSString *const kICMTKSurveysDismiss = @"surveys_dismiss";

// Accessibility
static NSString *const kICMTKSurveysFromTeammate = @"surveys_from_teammate";
static NSString *const kICMTKSurveysFromCompany = @"surveys_from_company";
static NSString *const kICMTKSurveysQuestions = @"surveys_questions";
static NSString *const kICMTKSurveysRequiredQuestion = @"surveys_required_question";
static NSString *const kICMTKSurveysQuestioniOfn = @"surveys_question_question_number_of_question_count";
static NSString *const kICMTKStarRatingQuestionOneStar = @"surveys_one_star_rating";
static NSString *const kICMTKStarRatingQuestionManyStars = @"surveys_multi_star_rating";

#endif
