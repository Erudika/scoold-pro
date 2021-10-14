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
