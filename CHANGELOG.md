## [2.42.0]
### Added
### Changed
### Removed
### Fixed
- Fix 123213
## [2.41.0] - 2017-10-03
### Added
### Changed
### Removed
### Fixed
- Fix 12323
## [2.40.0] - 2017-10-03
### Added
- Add what what what
### Changed
- Change b
### Removed
### Fixed
## [2.39.0] - 2017-10-03
### Added
### Changed
### Removed
### Fixed
## [2.37.0] - 2017-10-03
### Added
Add new feature
### Changed
### Removed
### Fixed
## [2.36.0] - 2017-10-03
### Added
Add 123
Added a feature
### Changed
Refactor 213
### Removed
### Fixed
Fix 132
Fix de1e
Fix 2ko213
## [2.35.0] - 2017-09-29
### Added
### Changed
### Removed
### Fixed
## [2.34.0] - 2017-09-29
### Added
### Changed
### Removed
### Fixed
## [2.33.0] - 2017-09-29
### Added
### Changed
### Removed
### Fixed
## [2.41.0] - 2017-09-29
### Added
### Changed
### Removed
### Fixed
## [2.40.0] - 2017-09-28
### Added
### Changed
### Removed
### Fixed
## [2.39.0] - 2017-09-28
### Added
### Changed
### Removed
### Fixed
## [2.38.0]  - 2017-09-28
### Added
### Changed
### Removed
### Fixed
## [2.37.0]  - 2017-09-28
### Added
### Changed
### Removed
### Fixed
## [Unreleased]  - 2017-09-28
### Added
- Add LogisticsOptionsResponse model and related logic.
- Add unit test for shippingcode generate page
- Add new Order state in Inbox API to show an indicator for TW shipping
- Add additional fix for request-ID and event tracking
- added contact support to chat for buyer who are not satisfy with the product upon receive (in FeatureFlag)
### Changed
- Change smart listing input field default case to sentence case
- Update Gatekeeper version from 1.7.0 to 1.8.1
- Refactor BrowseReferral
- Refactor partial chat api from Volley to Retrofit, including: get offers, archive and unarchive offers
- Change unit test pattern for Retrofit response
### Removed
### Fixed
- Fix keyboard is not pop up in sell form
- Fix smart listing sku title do not show ellipsize when text too long
- Hide keyboard after filter button pressed

## [2.32.0]
- Fix app crash in edit listing (null pointer for defaultValue)
- Add form validation for single picker
- Update rxjava from 1.1.8 to 1.3.0
- Update Gatekeeper version to solve inconsistent coin feature flag (stuff liked | coin)
- Add mock retrofit response from files in unit test
- Update smart listing validation rule ignore empty if field is not mandatory
- Update smart listing category selection event tracking
- Add smart Sort and Filter page
- Fix gallery and also add ability to add folder selection
- Remove old image loader and saver
- Add new Glide with new image loader and saver which fix many issues
- Remove bitmap transformation and add custom view to optimize loading and saving image (RoundedImageView)
- New custom crop image view and fix UI issues
- Fix filter image view including UI issues
- Fix image picker in sell/edit form and smart listing sell/edit form
- Fix and optimize image processing and uploading logic
- Refactor some parts of smart listing code
- Add back ability to add existing listings into group
- Fix proto configuration in build.gradle
- Remove `apt` and replace with new gradle `annotationProcessor`
- Fix phone camera intent crash
- Fix smart listing sell form UI glitches in slow internet connection
- Fix smart listing edit form UI bugs when replacing image
- Fix `Theme.Carousell` theme and the views that caused black background issues (CardView)
- Fix uncontrolled usage of external cache
- Fix wrong usage of RecyclerView.Adapter which causes issues
- Fix bad layout files such as redundant nested view
- Target API 26 (changed some deprecated support library notification class, new icon)
- Add tracking for listing fee
- Fix smart listing short text currency and measure format
- Add purchase flow to 7-11 order detail page. (still lack two apis.)
- Remove CarouAb (We are using feature flag now)
- Remove workaround in GsonAdapterFactory
- Add Multi Selection Picker Component
- New UI for chat product view
- Remove CarouAb (We are using feature flag now)
- Remove workaround in GsonAdapterFactory
- Implement Sign Up Improvement Feature
- Fix smart listing text view component can't show paste menu
- Add new auth token mechanism
- Fix app may crash when receiving push event with `suspended` type
- Update Protobuf with boolean filter type
- Add bump screen v2 which contain some ui changes
- Improve bump and coin event tracking
- Increase tappable area at bump label and coin bundle
- Add A/B test on bump screen
- Protobuf search
- Protobuf smart search for smart listing cards
- Adding display for chat system message
- Adding new location tracking event

## [2.31.1]
- Fix direct user to wrong page if multiple notifications exist at the same time

## [2.31.0]
- Fix the issue of open session duplication
- Fix the issue of tracking events with opensource 'push'
- Fix the issue of wrong position of search view in edit page
- Allow user to browse and purchase carousell coins
- Allow user to purchase bump with coins and top up coins
- Add listing fee feature
- Add X-Session-ID and X-Request-ID to header
- Add expand/collapse in AnimationUtil.
- Add 7-11 indicator in single listing page. Add flattenedDescription, shipping_tw_711 in Product, ParcelableUploadDetails classes.
- Add two columns in UploadDetails and update db version to 17.
- Add singleProductV31 tests.
- Upgrade single product api to 3.1 if shipping feature flag is enabled.
- Fix smart listing event tracking issue
- Add Adjust event tracking into smart listing
- Add category suggestion for smart listing
- Upgrade Gatekeeper to 1.5.0.
- Made some changes in UserState.STATE_6, if the product is shippingTw711, show buy now button.
- Rename buyNow to makeOffer, because it's actually only making an offer.
- Add 7-11 indicator in item listings.
- Add multi selection picker for smart listing

## [2.30.0]
- Smart Listings Release!
- add icon support for smart listing switch and checkbox component.

## [2.29.0]
- New UI for product in the ChatActivity (block with GateKeeper, will be released later with more progress of convenience service)

## [2.28.0]
- Fix cut off fonts when enlarge fonts in profile tab.
- Implement location tracking feature
- Set Fabric Gradle version to 1.23.0
- Fix crash when sharing ig in PromoteActivity in Android version 6.x and 7.x 
- Change tabs in reviews screen to material design
- Fix crash when user clicks the camera capture button multiple times 
- Remove LifeTracker and related codes
- Implement default radius feature
- Zendesk Help Center
- Use RTC instead of RTC_WAKEUP to reduce battery usage
- Handle 426 error;
- Fix missing flag to open play store from outside of activity.

## [2.27.1]
- Fix image upload through chat
- Fix duplicate set of photos in gallery 
- Reduce the size of thumbnail in gallery
- Enable support for larger heap in app
- Fix loading dialog can’t dismiss automatically when OOM happens
- Fix loading too large images in chat

## [2.27.0]

- Add smartlock for password flow
- Fix crash on profile fragment due to null view component
- New Snap List Sell flow

## [2.26.1]

- Fix issue where group cover images were not loaded

## [2.26.0]

- Add `REDEEM 3-DAY BUMP` in bump screen for user to retry a failed bump fulfillment
- Integrate play billing library
- remove GarpEventTracker and all the tracking logic
- extend MultiDexApplication instead of Application class (CarousellApp)
- Fix joining closed groups with secret code
- Change NotificationCheckedTextView parent class to AppCompatCheckedTextView for Android 4.4.2 and below device getting the correct theme color
- Update Base ActionBar Theme to backward compatible for Android 4.4.2 and below device
- Change "like" animation for Browse and Group Activity item to have fly-in animation every time instead of just the first time
- Refactor follow-relationship api from volley to retrofit request
- Increase the size of the make offer dialog

## [2.25.1]

- Fix crash when receiving push with "product" type for Android 4.1.2 and 4.3

## [2.25.0]

- Add Quality Bump feature;
- Add bump icon next to 'BUMPED' on profile;
- Show warning when user abuse paid bump by changing category in sell form;
- Send notification via a chat message when a buyer taps on a phone number in their Carousell listing;
- Handle deeplink for opening insights and bump.
- Upgrade the Gatekeeper version to 1.0.4

## [2.24.0]

- Add pre price drop bump abuse. Enforce user to pdb from lowest price of a product.
- Show warning when user abuse bump by changing price/category in sell form (category abuse is disabled in this version)
- Remove shippable feature
- Add checking for tracking only phone number tap action
- Send null instead of -1 for the tapIndex parameter in ListingsActionTracker

## [2.23.0]

- Fix ui issues for playstore review
- Fix ui issues where the search history view cuts off browse page
- Remove Sell Intent AB test code to roll out this feature
- Change the naming of Sell Later Activation tracking event (type -> reminder_type)
- Handle bump notification which direct user to a listing's bump page
- Update bump label to 'Bumped' if unverified user has bumped listing
- Update quick login credential of production test accounts
- Update bump event tracking


## [2.23.0]

- Fix ui issues for playstore review
- Fix ui issues where the search history view cuts off browse page

## [2.22.1]

- Fix app crash due to query a db table does not exist
- Add null point check in ProfileFragment

## [2.22.0]

- Change Chat button color and allow sending image for CM listing.
- Remove CM premium badge on all screens except Profile.
- Made phone number fields within premium dealer listings tappable.
- Add Boosted Visibility feature
- Add Maybe Later Activation feature

## [2.21.1]

- Fix the issue caused by incompatible types of the distance field between a server response and its corresponding model, resulting in failure to display a special collection header in the collections screen;
- Fix #9678 and #9679 caused by a continuing network request after a view has been destroyed.

## [2.21.0]

- Enable xml reporting for lint warnings
- Implement 3 day bump
- Implement price drop bump
- Duplicate/relist check
- Add feature toggle for paid bump
- Change the redirect url for the "suspended user" label

## [2.20.1]

- Fix "New sell intent flow can be displayed when signing up with FB and user id ends with odd number"

## [2.20.0]

- Implement A/B test for new Sell Intent Flow
- Remove the pre-signup flow tweaks and revert back to the old one
- Change the redirect url for the "suspended user" label;

## [2.19.3]

- Fix issues in group home tab
- Fix front camera crash in signup page

## [2.19.0]

- Implement A/B test for the shippable countrywide browse filter option;

## [2.18.0]

- Implement sold items slotting for the browse screen;
- Track the time spent for retrieving the adjust attribution;
- Add new toggle for price drop notifications;
- Fix skipping items issue on browsing page;
- Upgrade sqlite table temp_products to add a new column.

## [2.17.0]
- Remove 5 second delay during the app's launch;
- Completely refactor the collections screen;
- Add a new "sold section" to the home screen;
- Show sold items only when the sold section is tapped;
- Change AB test flow to fit new requirements.
- Fix missing version name in session events on BQ
- Fix the issue of country name in event tracking

## [2.16.0]
- Refactor volley to retrofit
- follow user api
- flag user api
- Completed new on-boarding flow for the users coming from paid Facebook ads campaigns.
- Update default browse radius for each country

## [2.15.0]
- Add Listing Insights

## [2.14.1]
- Fix the "Application not installed" issue

## [2.14.0]
- Wrap data tracking part to an external library (refactor)
- Implement new sign up flow for newly registered users (including AB testing)
- Change new listing share to facebook timeline flow
- Customize product page and chat page for services and jobs verticals

## [2.13.0]
- Update app icons
- Support http links in chat
- Logout users when they made unauthorized call
- Implemented refresh token mechanism and is currently disabled
- Handle custom url scheme `carousell://`
- Show sell bottom sheet for `sell` type push or deeplink
- Add Adjust tracking for first time lister or chatter
- Add Adjust attribution changed callback

## [2.12.0]
- Update app icons
- Modify the position of action buttons in chat screens
- Remove Optimizely
- Lowballer feature
- Default browse sort to popular for all countries
- Remove ab test for list more feature and roll out to all users
- Track Kahuna push clicked event
- Add camera preview for profile photo on signup
- Track manual bump events on ECS
- Turn off stuff liked experiment and enable new ui for all users
- Improve UX
 - Avoid to popup the confirming dialog in an edit listing page when pressing without changes.
 - Avoid keyboard shows up in an edit listing page when entering a listing detail and going back.
 - Avoid recent history shows up after searching a user.
- Fix data tracking
 - Fix event definition based on https://github.com/carousell/analytics-docs/blob/master/sell_actions.md
 - Fix duplicated events sending caused by timeout
 - Check country format for open session
 - Replace handler with GCM service in SessionLifeTracker
