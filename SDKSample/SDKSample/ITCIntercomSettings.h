//
// Copyright 2014 Intercom
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#error replace these two placeholders with your appId and API key; you can get them from  http://app.intercom.io -> Settings for your app -> API keys
static NSString *kIntercomAppId = @"YOUR_APP_ID";
static NSString *kIntercomAPIKey = @"YOUR_SDK_KEY (starts with ios_sdk-...)";

// this is the user's email or userId that will show up in your Intercom app
static NSString *kIntercomSampleUserEmail = @"sdk2-user@app.com";
static NSString *kIntercomSampleUserId = @"1002";

// this is the hmac generated using the user's email address. It can be generated from the
// command line using the following commands:
// echo -n "the user's email address" | openssl dgst -sha1 -hmac "your API secret"
static NSString *kIntercomSampleUserEmailHmac = @"";
