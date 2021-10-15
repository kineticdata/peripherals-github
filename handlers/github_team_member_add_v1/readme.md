# GitHub Team User Add V1

## Parameters
[Organization Name]
	The organization of which the existing team belongs to.

[Team Name]
	The name of team for new members to be added.

[New Members]
	Usernames of members to be added to team Separated by commas for multiple users.

## Results
	No results are returned
	
	No exceptions will be raised for cases such as misspelled organization names, or teams.

### Sample Configuration
Organization Name : Acme

Team Name : Alpha

New Members : thetajohn, gammaben

## Notes
In order to use the generic handler an access token is required.
  * A personal [access token](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/creating-a-personal-access-token) can be used in place of [Web application flow](https://docs.github.com/en/developers/apps/building-oauth-apps/authorizing-oauth-apps#web-application-flow).  The instructions in the link are easy to follow.

## Detailed Description
This handler is used for adding new members to an existing team. After authorizing the given account using a GitHub token, new members will be added to an existing team.
