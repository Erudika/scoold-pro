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
