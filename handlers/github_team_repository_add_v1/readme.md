# GitHub Team Repository Add V1

## Parameters
[Organization Name]
	The organization of which the existing team belongs to.

[Team Name]
	The name of team for new repository(ies) to be added.

[Repositories]
	Repositories for the team to be given access to. Separated by commas for multiple repositories.

## Results
	No results are returned
	
	No exceptions will be raised for cases such as misspelled organization names, teams, or invalid existing repositories. 

### Sample Configuration
Organization Name : Acme

Team Name : Alpha

Repositories : acme/widgets, acme/handlers
  
## Notes
  * A personal [access token](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/creating-a-personal-access-token) can be used in place of [Web application flow](https://docs.github.com/en/developers/apps/building-oauth-apps/authorizing-oauth-apps#web-application-flow).  The instructions in the link are easy to follow.

## Detailed Description
This handler is used for giving access of existing repositories to existing teams of an organization. After authorizing the given account using a GitHub token, existing repositories will be able to be accessed to defined teams. 
