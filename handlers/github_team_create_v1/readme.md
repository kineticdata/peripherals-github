# GitHub Team Create V1

## Parameters
[Organization Name]
	The organization of which the team will belong to.

[Team Name]
	The name of the team to be created.

[Permissions]
	The capabilities of the team to interact with its repositories.

[Repositories] (optional)
	You may add existing repositories belonging to the organization here, if you wish.
	Seperate repositories by commas for multiple repositories.

## Results
	No results are returned
	
	No exceptions will be raised for cases such as misspelled organization names or invalid
		existing repositories. 

### Sample Configuration
Organization Name : Acme

Team Name : Alpha

Permissions : pull -or- push -or- admin

Repositories : acme/widgets, acme/handlers

## Notes
In order to use the generic handler an access token is required.
  * A personal [access token](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/creating-a-personal-access-token) can be used in place of [Web application flow](https://docs.github.com/en/developers/apps/building-oauth-apps/authorizing-oauth-apps#web-application-flow).  The instructions in the link are easy to follow.

## Detailed Description
This handler is used for creating a new team within an existing organization on GitHub. After authorizing the given account using a github token, a team is created within the organization.