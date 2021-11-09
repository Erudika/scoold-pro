## `1.46.4` - 2021-11-09T17:38:02Z

1554228 Release v1.46.4.
bac6feb fixed Scoold API doesn't accept Para super tokens or JWTs generated with para-cli
c8a5552 fixed exception message when API returns 401
4f2cc17 fixed feedback page still visible even if is_default_space_public = false
b7c9db0 updated installer.sh
3f4ed80 fixed NPE in HttpUtils
7851a86 fixed minor redirect vulnerability in HttpUtils
fd9299b added .editorconfig
a50af81 updated Para client to 1.41.3
1ee7bc9 fixed connection retry logic on startup broken after updating ParaClient
a49037f added options to completely turn off email notifications
166bc2b fixed signout button having different color than the theme
5c1ca4e fixed opensearch.xml not properly translated
59509d2 fixed text in email notifications not properly translated
9a86462 updated license
ae2685e fixed security issue - possible to inject HTML in notification emails

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
