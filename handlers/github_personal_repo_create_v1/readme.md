# GitHub Personal Repository Creation
  Creates Repository on Users Personal list.
## Info Values
[personal_access_token]
  Personal Access Token of user generated prior to and external to of this handler. Review notes below for instructions on generating a PAT.
## Parameters
[name]
  Name of desired repository user wishes to create.

## Notes
In order to use the generic handler an access token is required.
  * A personal [access token](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/creating-a-personal-access-token) can be used in place of [Web application flow](https://docs.github.com/en/developers/apps/building-oauth-apps/authorizing-oauth-apps#web-application-flow).  The instructions in the link are easy to follow.
  * The access token will require the appropriate scope of 'repo' be set.
## Detailed Description
This handler creates a github repository for a user.  
