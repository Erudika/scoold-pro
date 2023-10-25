## `1.57.0` - 2023-10-25
- added support for updating basic user notification options and favorite tags via API
- fixed broken MathJax rendenring when a new page of data is loaded with AJAX
- added new moderation button to quickly convert an answer to a comment
- added reputation counter over user avatar in top right menu
- minor UX fix - changed copy permalink icon to be more obvious
- fixed NPE when importing data from SO archive
- added support for Slack/Mattermost/Teams notification filters
- added support for setting a new question template for each space
- added support for having individually assigned moderators for each space
- added support for pre-polulating text inputs on the ask question page
- fixed some minor CSS issues

## `1.56.1` - 2023-09-21
- updated Spring Boot
- updated MathJax which fixes a few bugs
- fixed bug preventing users from applying the favorite tags and 'near me' filters
- added frame-ancestors to CSP header
- fixed typo in html template
- added error reporting when auth request to MS Teams fails

## `1.56.0` - 2023-08-25
- updated Spring Boot
- added new config option `scoold.notifications_as_reports_enabled` to allow admins/mods to get notification copies as reports; added button for deleting all unapproved posts
- improved reports UI, now showing unapproved content which can be approved without leaving the page
- add new option `scoold.mods_access_all_spaces = true` to allow moderators for assigned spaces only; allowed `scoold.posts_need_approval` to be configured per space
- added notification switch for admins/mods for subscribing to new answers
- removed some unnecessary details from the profile page like the IDP badge on the avatar
- fixed a few issues around the import from SO functions
- fixed problems when uploading zip files due to MIME type mismatch
- fixed bug preventing edits when post ID contains punctuation chars
- added option for not sending scope parameter in OAuth2 token requests `scoold.security.oauth.send_scope_to_token_endpoint`

## `1.55.0` - 2023-07-27
- updated Para
- added form for creating new tags on the tags page
- fixed API endpoint for editing spaces in bulk doesn't allow adding the default space
- updated Swagger docs for API
- fixed API endpoint for creating posts does not allow arbitrary IDs
- added alias URL for questions, /questions/{id}
- added 'answered' filter on questions page, fixed bad query syntax errors
- fixed tags autocomplete allows even if tag input when tag creation is disabled
- added new query parameter notificationsDisabled to API to prevent spam when creating posts in bulk
- fixed question created with no tags if tag creation is disabled

## `1.54.1` - 2023-07-01
- updated Spring Boot
- added xml files to whitelist of supported uploads
- fixed bug preventing tags from updating when `tag_creation_allowed = false`
- fixed minor CSS issue - bold text not bold enough
- added error message for users trying to regsiter and login with an email from unapproved domain
- added new option for showing an info banner on top the the /signin pages only, `scoold.welcome_message_prelogin`
- fixed NPE when creating replies in Mattermost when MongoDB is configured as data source
- minor refactoring - moved a method to `ScooldUtils`
- fixed possible race condition when setting the access token on `ParaClient`
- fixed incorrect 'deleted user' shown as author of questions on the /profile page

## `1.54.0` - 2023-06-05
- fixed issue with Mattermost integration which caused inconsistent behavior when posting from an unlinked MM channel
- added Mattermost bot for sending DM notifications
- fixed styling inconsistencies in tabs on Admin page
- added checkbox to delete all data before importing a zipped backup, on Admin page
- fixed issues with Mattermost integration which caused confusing behavior when executing bot commands like ask/answer
- fixed permalink URL in post macro
- added new option for hiding user profiles and users page - scoold.users_discoverability_enabled
- fixed questions with empty tags shown incorrectly in Mattermost integration
- fixed comment form under post not working on AJAX requests
- added support for deep linking (permalinks) to comments
- fixed post author shown as deleted user on profile page
- fixed bug in Mattermost integration resulting in JSON raw string sent as DMs
- fixed Hebrew language not loaded properly and not shown in list of available translations

## `1.53.0` - 2023-05-05
- added Italian translation
- added new option for restricting the creation of new tags by users, scoold.tag_creation_allowed = true
- updated language files with new machine-translated strings
- fixed a few untranslated parts of Scoold
- fixed expired label for API keys
- fixed bug which breaks JS code when an unescaped apostrophe is contained in custom welcome messages
- fixed inconsistency - spaces dropdown menu not showing default space for admins/mods
- fixed issues with default space duplication which resulted in broken All Spaces filter
- fixed possible space duplication when new users are created
- fixed NPE in ScooldUtils
- fixed possible space duplication and overall performance when loading spaces and creating users
- fixed questions and answers on profile page not showing correct results, missing sticky posts, etc
- fixed bug in Mattermost integration which causes bot name to change when show post button is clicked
- updated dependencies

## `1.52.3` - 2023-03-20
- fixed bug causing the reply button to not work in Mattermost messages
- fixed broken links to posts in Mattermost integration
- fixed slowness while generating sitemap

## `1.52.2` - 2023-03-09
- updated SnakeYAML to 2.0
- fixed bug when accepting answers leading to unlimited reputation gains
- fixed default space shown twice in select inputs and a few other places
- fixed default space shown twice in menu and on profile page
- fixed sitemap.xml not containing links to all questions

## `1.52.1` - 2023-02-16
- updated dependencies
- added additional notification settings for team chat DMs (Slack, MM, Teams) on common events
- fixed API listUsers endpoint not returning embedded user objects
- added search commands to Teams chat bot which return results as a DM
- fixed access log not disabled when scoold.file_logger_level=OFF
- fixed minor logback configuration issue
- fixed bug breaking the admin mode switch in the navbar
- added new property to Post class - approvalTimestamp indicating the time when an answer was accepted
- updated the launch configuration file app.gae.yml for Google App Engine
- fixed reply notifications not sent to chat channels when the question's author has replied to themself"
- fixed API not allowing password changes
- fixed bug preventing edits of Slack/Teams/MM destination channels on admin page
- fixed bug showing an incorrect default space name

## `1.52.0` - 2023-01-15
- updated Para client
- fixed broken checkbox for modifying spaces on admin page
- refactoring: moved logic for reading and updating all objects to ParaClient, resulting in much cleaner and safer code
- fixed broken image link for default avatars in summary emails
- added new option to configure a logo for dark mode, scoold.logo_dark_url
- added support for assigning spaces to all users from the UI and fixed the spaces API
- fixed possible infinite redirect loop
- fixed question box not clickable on mobile
- added clickable links to custom badges for browsing users with same badge
- fixed init message on startup not showing actual Para endpoint when custom context path is used
- added support for toggling admin/mod role from the UI to prevent accidental edits
- added new option to configure min required tags per question - scoold.min_tags_per_post
- added support for editing badges in bulk for multiple users at a time
- added advanced filtering options and compact view mode on the users page for admins and moderators
- fixed bug which caused no results to be shown when the default space is selected in the menu
- added option for users to change their emails
- fixed user search box too hidden on Users page
- added AWS STS dependency
- fixed timeout when fetching MS Teams channels list by making the task async
- fixed not all channels listed in MS Teams integration when selecting a webhook target
- minor fix for API bad request error message
- added new option to disable negative votes scoold.downvotes_enabled
- fixed sign up page is still accessible even if password auth is disabled
- fixed CC copyright line in footer not hidden when branding is disabled
- updated API docs

## `1.52.0` - 2023-01-15
- updated Para client
- fixed broken checkbox for modifying spaces on admin page
- refactoring: moved logic for reading and updating all objects to ParaClient, resulting in much cleaner and safer code
- fixed broken image link for default avatars in summary emails
- added new option to configure a logo for dark mode, scoold.logo_dark_url
- added support for assigning spaces to all users from the UI and fixed the spaces API
- fixed possible infinite redirect loop
- fixed question box not clickable on mobile
- added clickable links to custom badges for browsing users with same badge
- fixed init message on startup not showing actual Para endpoint when custom context path is used
- added support for toggling admin/mod role from the UI to prevent accidental edits
- added new option to configure min required tags per question - scoold.min_tags_per_post
- added support for editing badges in bulk for multiple users at a time
- added advanced filtering options and compact view mode on the users page for admins and moderators
- fixed bug which caused no results to be shown when the default space is selected in the menu
- added option for users to change their emails
- fixed user search box too hidden on Users page
- added AWS STS dependency
- fixed timeout when fetching MS Teams channels list by making the task async
- fixed not all channels listed in MS Teams integration when selecting a webhook target
- minor fix for API bad request error message
- added new option to disable negative votes scoold.downvotes_enabled
- fixed sign up page is still accessible even if password auth is disabled
- fixed CC copyright line in footer not hidden when branding is disabled
- updated API docs

## `1.52.0` - 2023-01-15
- updated Para client
- fixed broken checkbox for modifying spaces on admin page
- refactoring: moved logic for reading and updating all objects to ParaClient, resulting in much cleaner and safer code
- fixed broken image link for default avatars in summary emails
- added new option to configure a logo for dark mode, scoold.logo_dark_url
- added support for assigning spaces to all users from the UI and fixed the spaces API
- fixed possible infinite redirect loop
- fixed question box not clickable on mobile
- added clickable links to custom badges for browsing users with same badge
- fixed init message on startup not showing actual Para endpoint when custom context path is used
- added support for toggling admin/mod role from the UI to prevent accidental edits
- added new option to configure min required tags per question - scoold.min_tags_per_post
- added support for editing badges in bulk for multiple users at a time
- added advanced filtering options and compact view mode on the users page for admins and moderators
- fixed bug which caused no results to be shown when the default space is selected in the menu
- added option for users to change their emails
- fixed user search box too hidden on Users page
- added AWS STS dependency
- fixed timeout when fetching MS Teams channels list by making the task async
- fixed not all channels listed in MS Teams integration when selecting a webhook target
- minor fix for API bad request error message
- added new option to disable negative votes scoold.downvotes_enabled
- fixed sign up page is still accessible even if password auth is disabled
- fixed CC copyright line in footer not hidden when branding is disabled
- updated API docs

## `1.51.3` - 2022-12-19
- fixed styling for user profile boxes in RTL mode (i18n)
- added new option to override the dark stylesheet only when dark mode is enabled
- fixed dark mode CSS could not be overridden with user-defined styles
- fixed direct link to private space not working after login
- fixed bug preventing Scoold from connecting to a Para server which is deployed under a custom context path
- added option to disable logging to file `scoold.file_logger_level = 'OFF'`

## `1.51.2` - 2022-12-09
- fixed bug where approve answer button was hidden for post authors
- fixed API Swagger docs not showing correct server URL when a context path is set
- fixed 404 on redirect after post actions are performed under specific context path
- fixed default space not assigned when scoold.auto_assign_spaces = 'default' is explicitly set
- fixed merge post button not hidden for regular users
- added 405 error exception handler to take care of log spam
- updated deploy scripts and API docs
- fixed bug which caused OAuth2 delegated admin groups to be reset when visiting the Admin page
- refactored option scoold.security.oauth.appid_in_state_param_enabled

## `1.51.1` - 2022-11-17
- fixed returnto redirect broken when visiting a link to a private space
- minor fix in ScooldConfig docs
- fixed CSS issues with fixed nav enabled
- fixed file upload 403 error code returned if allowed formats overwrite default ones without MIME type specified
- added more verbose logging for user groups changes via SCIM
- fixed a few issues around SCIM provisioning
- fixed issue where questions in space would not be updated when space is renamed
- added new method in HttpUtils for determining the request origin

## `1.51.0` - 2022-11-10
- updated Para client
- fixed creating a question in the default space from another space doesn't work as expected
- fixed spaces menu should be sorted alphabetically
- fixed LDAP auth filter group assignment from LDAP attributes not working with memberOf authorities/groups
- added more verbose logging for failed requests to the MS Teams Graph API
- fixed build
- added new option scoold.security.oauth.state_param_enabled for working around issues with the state param and some IDPs
- added new query parameter includeReplies=true to API /api/posts to return all questions and answers in a single request
- added new option scoold.answers_approved_by to control who can accept answers
- fixed typos in Swagger API document
- fixed broken default tag option when creating new questions, making it impossible to have a question without tags
- updated Jose JWT
- fixed typos in Danish translation

## `1.50.5` - 2022-10-27
- updated Para client
- updated Spring Boot
- fixed broken links when Scoold is deployed under a different context path
- added support for having a few special charaters in tags
- fixed build
- updated Para client
- added new API method for editing question tags
- updated AWS SDK

## `1.50.4` - 2022-10-13
- added button for admins to delete all reports
- added rate limiting when creating reports, questions or answers
- updated Para client
- updated dependencies
- added option to hide the Microsoft login button
- fixed crash on startup when using a custom S3 endpoint URL and region is not set in ENV

## `1.50.3` - 2022-09-30
- added configuration option to disable Mattermost authentication and login button
- updated Spring Boot
- fixed bug limiting the maximum number of favorite tags to 5, instead of 50
- fixed bug where summary emails would be sent without a subject
- added support for overriding the S3 endpoint URI for use with S3-compatible storage providers other than AWS
- added logback.xml
- added additional subscribe-to-thread button, aka notification bell icon, closes #344
- fixed bug where moderators and admins are shown incorrectly in search results when editing user spaces in bulk

## `1.50.2` - 2022-09-02
- updated Para to 1.46.2
- fixed CSP violation error when scoold.security.ldap.is_local is enabled
- added new SAML option for turning off NameID requirement, scoold.security.saml.security.want_nameid
- fixed bug preventing profile pictures to be set when creating users through the API
- fixed bug causing moderators to be hidden from the list of users in the default space
- fixed issue with the Nice Profile badge
- updated Dutch translation file
- fixed minor bug causing avatar changed by admin to also change admin's own avatar temporarily
- added configuration property scoold.security.ldap.ad_mode_enabled for enabling AD auth explicitly
- fixed typo in configuration documentation
- fixed HTTP 406 error when calling the backup API from Swagger
- fixed bug preventing uploading files with uppercase names
- fixed CSS overflow in pre tag

## `1.50.1` - 2022-07-12
- added new option to change the number of results when mentioning users
- updated Spring Boot to 2.7.1
- fixed incorrect indication of upvotes and downvotes on profile page
- fixed a few issues with returned results when searching for users to mention
- fixed z-index CSS for emoji picker
- fixed possible content injection if CSP is explicitly disabled

## `1.50.0` - 2022-06-22
- added options to allow target attribute for custom links in navbar
- fixed languages page should only show list of available translations
- added support for custom badges in user profiles
- fixed badge order in users automcomplete
- updated JWT library to 9.23
- minor fix in config docs
- added extra details to differentiate users they're selected to be mentioned
- added new configuration option scoold.user_autocomplete_details_enabled = false
- fixed profile pic CSS and broken emoji picker on firefox
- fixed mentions dropdown should not close when typing spaces
- fixed broken link to post in mention nonitification emails
- added emoji picker
- fixed mentioning users by last name not working
- updated the Ubuntu installer script
- fixed bug which caused user duplication when importing data from SO
- fixed vote indicator only visible after refresh

## `1.49.7` - 2022-06-09
- updated dependencies
- fixed password should be auto-generated if missing when creating users via API
- fixed bug in `ApiController` preventing the creation of new users via API
- added visual indicators for whichever vote was cast by the current user
- refactoring: renamed utility method `fetchProfiles()` to `getProfiles()`
- fixed bug causing reputation to drop on downvotes but not get restored on upvotes
- fixed search hints not hidden when closing the search box
- fixed compact view checkbox not reset when filter drawer is closed
- fixed profile box for questions showing 'deleted user' on Profile > Favorites
- fixed votes go over the limit if cast in quick succession

## `1.49.6` - 2022-05-27
- updated Para client to 1.46.0
- fixed several bugs in the code responsible for importing data from SO
- fixed group mapping should only happen for OAuth2 users
- fixed padding in the backups section on the admin page
- updated Spring Boot to 2.7.0
- fixed assets version number should be different than the Scoold version for better security
- fixed git revision should not be used for assets versioning

## `1.49.5` - 2022-05-13
- updated Para client to 1.45.10
- fixed Scoold log files should be prefixed with 'scoold' rather than 'para'
- fixed unhandled exceptions in UploadController resulting in stalled upload progress on the client side
- fixed mentions not rendered when posting a new answer
- fixed file uploading stalls when using the S3 storage provider
- fixed config file should not be saved locally on first startup if `config.url` is set
- fixed bug in client side code, preventing the rendering of mentions

## `1.49.4` - 2022-04-30
- fixed OAuth2 groups mapping attribute name should be blank by default
- fixed exception not declared
- fixed EXIF data should be removed from uploaded pictures
- fixed link to target in reports not absolute
- fixed profile name not limited in length
- fixed feed.xml and sitemap.xml show content even when default space is not public
- fixed moderators should be able to approve answers
- added option to enable/disable sitemap generation

## `1.49.3` - 2022-04-09
- fixed automatic group assignment using claims from OAuth2 providers
- updated Para client
- fixed startup code by using `SpringApplicationBuilder`
- updated Heroku and GAE launch templates

## `1.49.2` - 2022-04-01
- updated Para client
- added web manifest and service worker, thus making Scoold a PWA
- updated Spring Boot and Para client
- added cache-busting revision parameter to static assets
- added webmanifest file generator
- added Version class for keeping the exact release version of Scoold
- added response compression
- added title to search icon button in navbar
- removed touchstart event in clientside code

## `1.49.1` - 2022-03-28
- fixed search filter for answered questions
- excluded Jackson databind from Spring Boot
- updated Para Client to 1.45.3
- added support for uploading avatars to Cloudinary
- added Cloudinary SDK
- added translation strings for RSS feed
- updated AWS SDK
- added lots of minor visual tweaks and CSS styling, updated MaterializeCSS, EasyMDE plugins
- updated Nimbus JWT to 9.21
- fixed app secret should be auto-generated when Scoold's configuration is initialized
- fixed 504 timeout errors when restoring from backup, if Scoold is running behind a proxy and restore job takes > 60s

## `1.49.0` - 2022-03-07
- updated Para to 1.45.1
- added 'rebuild index' button to Admin page
- fixed clearing a config property which was modified via API does't work
- added Facebook app ID notice for changed login flow
- removed Facebook SDK completely from /signin page, in favor of a simple web redirect
- fixed minor issue in WebhooksController
- added explanation text when there are no reports found
- added support for auto-init in docker-compose file
- fixed application.conf should automatically be created if missing
- added support for auto-initialization of the Scoold Para app, thus removing the need for any operations with the Para CLI tool
- added support for a new custom webhook event 'config.update'
- fixed webhook triggering should be allowed from the API
- refactoring - removed static fields holding config values from ScooldServer
- updated API docs to include new config methods
- major refactoring around Config - reorganized and centralized all config properties
- fixed a few issues around password reset functionality

## `1.48.2` - 2022-02-17
- fixed bug which prevented more complex assignment of groups and spaces from claims returned by an OAuth2 IDP
- fixed NPE in Teams integration, preventing asking questions from the @bot message dialog
- fixed 405 error when posting an answer from a specific /write URL
- fixed write answer button visible when question is closed
- fixed CSS class in footer when an RTL language is selected
- updated JWT library

## `1.48.1` - 2022-02-09
- fixed profile picture changes not persisted
- fixed warning for using root app displayed incorrectly sometimes
- added log message if OAuth2 user is locked out due to insufficient role privileges

## `1.48.0` - 2022-02-07
- minor refactoring
- Release v1.48.0.
- added support for JSON pointers in para.security.oauth.groups_attribute_name for advanced roles mapping
- fixed connection error message should be printed out when Scoold is connected to a non-existent app
- added warning in logs when Scoold is connected to the root Para app
- fixed signature error when Slack sends ping requests to Scoold
- updated dockerfile
- bumped year in license headers
- added log message indicating an invalid Slack request signature
- fixed password reset link not sent sometimes
- dockerfile
- updated Spring Boot to 2.6.3
- fixed changing the main logo should be reflected in transactional emails, making branding more consistent
- updated Para client to 1.43.4
- added delete protection for valuable content - questions with answers and accepted answers
- changed file uplaoads to Imgur to only work for avatars now
- added support for uploading avatars to cloud-based image services like Imgur, Cloudinary
- fixed space selection menu not being clear enough
- updated AWS SDK
- changed order of all spaces in dropdown menu
- fixed all spaces label
- changed all spaces to be the default view upon fist login
- removed unused configuration property para.vatar_validation_enabled
- updated AWS and Azure SDKS
- exposed file upload methods in the API controller
- updated translation strings
- fixed missing translation strings on question filter

## `1.47.2` - 2022-01-04

- fixed sort filter not changing
- updated Para to 1.43.3
- added support for ReCAPTCHA on signup and password reset pages

## `1.47.1` - 2021-12-30

- updated Para client to 1.43.1, switched to Java 11
- moved comment section above the post actions bar
- fixed custom theme caching
- fixed possible open redirect in `QuestionsController`
- fixed possible (low-severity) CSRF involving space cookies by using `SameSite=Strict` flag
- fixed user JWT token not invalidated on logout
- updated Spring Boot to 2.6.2
- fixed redirect loop in /reports
- heroku java 11 migration
- fixed webhook event `comment.create` not triggered
- added Farsi translation
- fixed slowdown due to multiple redundant requests to Para API when list of spaces is empty
- increased the default max. comment length from 255 to 600
- fixed comment line breaks ignored
- fixed error message when return-to URI is invalid
- fixed media recording JS code
- improved UX around comment and answer form inputs, added new option `para.always_hide_comment_forms`
- fixed `Permissions-Policy` header

## `1.47.0` - 2021-11-26

- updated Para client to 1.42.0
- fixed all JS code should be stripped from inline CSS
- switched to a more secure login mechanism using short-lived ID tokens (**requires latest version of Para!**)
- changed auth cookie name to default to the Para app id - **this may log out users!**
- added new security config option - `para.security.one_session_per_user = true`
- added `Permissions-Policy` header
- fixed missing important properties on exported objects which have `JsonIgnore` annotation
- added support for media recording and uploading from mic/webcam
- minor fixes in `UploadController` to allow media uploads
- fixed CSP header to prevent errors with Google Maps, added new config option `para.media_recording_allowed`

## `1.46.5` - 2021-11-15

- updated Spring Boot to 2.5.6
- added note in `api.yaml`
- fixed exception `ClassNotFoundException: RuntimeDelegateImpl` when calling the Scoold API
- fixed a few HTML errors
- fixed app manifest for MS Teams

## `1.46.4` - 2021-11-09

- fixed Scoold API doesn't accept Para super tokens or JWTs generated with para-cli 
- fixed exception message when API returns 401 
- fixed feedback page still visible even if `para.is_default_space_public = false`
- updated `installer.sh` 
- fixed NPE in `HttpUtils` 
- fixed minor redirect vulnerability in `HttpUtils`
- added `.editorconfig` 
- updated Para client to 1.41.3 
- fixed connection retry logic on startup broken after updating `ParaClient`
- added options to completely turn off email notifications 
- fixed signout button having different color than the theme 5
- fixed `opensearch.xml` not properly translated 
- fixed text in email notifications not properly translated 
- fixed security issue - possible to inject HTML in notification emails

## `1.46.3` - 2021-10-04

- updated Para client to `1.41.2`, fixing critical errors when registering users
- fixed unescaped <> chars cause invalid search query syntax errors

## `1.46.2` - 2021-10-04

- fixed critical issue with host verification in Para client when using SSL

## `1.46.0` - 2021-10-04

- **fixed Java 17 compatibility issue by updating to the new Para client**
- added ability to rename spaces
- added space select field to new question form
- added support for saving full threads from Slack/Teams/Mattermost to Scoold
- added option to disable Gravatars if necessary para.gravatars_enabled = true
- added new option to explicitly allow a subset of OAuth2 users into Scoold - `para.security.oauth.users_equivalent_claim_value`
- added option to filter questions having all given tags
- upgraded to Apache HTTP client 5.x
- improved search results for questions, now search is performed on answers and comments within a question
- fixed admin string in Japanese translation
- fixed error messages in logs when Teams integration not enabled
- fixed maxlength not enforced in comments editor box
