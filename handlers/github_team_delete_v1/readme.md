# GitHub Team Delete V1

## Parameters
[Organization Name]
	The organization of which the team belongs to.

[Team Name]
	The name of the team to be deleted.

## Results
	No results are returned
	
	No exceptions will be raised for cases such as misspelled organization names or invalid existing repositories. 

### Sample Configuration
Organization Name : Acme

Team Name : Alpha

## Notes
In order to use the generic handler an access token is required.
  * A personal [access token](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/creating-a-personal-access-token) can be used in place of [Web application flow](https://docs.github.com/en/developers/apps/building-oauth-apps/authorizing-oauth-apps#web-application-flow).  The instructions in the link are easy to follow.

## Detailed Description
This handler is used for deleting a team within an existing organization on GitHub. After authorizing the given account using a github token, a team is deleted within the organization.