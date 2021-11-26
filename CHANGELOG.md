## `1.47.0` - 2021-11-26
1.47.0

- minor deprecation fix
- updated Para client to 1.42.0
- fixed all JS code should be stripped from inline CSS
- switched to a more secure login mechanism using short-lived ID tokens (requires latest version of Para!)
- changed auth cookie name to default to the Para app id - this may log out users!
- added new security config option - para.security.one_session_per_user = true
- added Permissions-Policy header
- fixed missing important properties on exported objects which have @JsonIgnore annotation
- added support for media recording and uploading from mic/webcam
- minor fixes in UploadController to allow media uploads
- fixed CSP header to prevent errors with Google Maps, added new config option para.media_recording_allowed

## `1.47.0` - 2021-11-26
1.47.0

- minor deprecation fix
- updated Para client to 1.42.0
- fixed all JS code should be stripped from inline CSS
- switched to a more secure login mechanism using short-lived ID tokens (requires latest version of Para!)
- changed auth cookie name to default to the Para app id - this may log out users!
- added new security config option - para.security.one_session_per_user = true
- added Permissions-Policy header
- fixed missing important properties on exported objects which have @JsonIgnore annotation
- added support for media recording and uploading from mic/webcam
- minor fixes in UploadController to allow media uploads
- fixed CSP header to prevent errors with Google Maps, added new config option para.media_recording_allowed

## `1.47.0` - 2021-11-26
1.47.0

- minor deprecation fix
- updated Para client to 1.42.0
- fixed all JS code should be stripped from inline CSS
- switched to a more secure login mechanism using short-lived ID tokens (requires latest version of Para!)
- changed auth cookie name to default to the Para app id - this may log out users!
- added new security config option - para.security.one_session_per_user = true
- added Permissions-Policy header
- fixed missing important properties on exported objects which have @JsonIgnore annotation
- added support for media recording and uploading from mic/webcam
- minor fixes in UploadController to allow media uploads
- fixed CSP header to prevent errors with Google Maps, added new config option para.media_recording_allowed

## `1.47.0` - 2021-11-26
1.47.0

- minor deprecation fix
- updated Para client to 1.42.0
- fixed all JS code should be stripped from inline CSS
- switched to a more secure login mechanism using short-lived ID tokens (requires latest version of Para!)
- changed auth cookie name to default to the Para app id - this may log out users!
- added new security config option - para.security.one_session_per_user = true
- added Permissions-Policy header
- fixed missing important properties on exported objects which have @JsonIgnore annotation
- added support for media recording and uploading from mic/webcam
- minor fixes in UploadController to allow media uploads
- fixed CSP header to prevent errors with Google Maps, added new config option para.media_recording_allowed

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
