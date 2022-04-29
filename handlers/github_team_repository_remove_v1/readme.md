= GitHub Team Repository Remove V1

== Parameters
[Organization Name]
	The organization of which the existing team belongs to.

[Team Name]
	The name of team for repository to be removed from.

[Repositories]
	Repositories of the team to have their access removed from.
	Separated by commas for multiple repositories.

== Results
	No results are returned
	
	No exceptions will be raised for cases such as misspelled organization names, teams, or invalid existing repositories. 

==== Sample Configuration
Organization Name : Acme
Team Name : Alpha
Repositories : acme/widgets, acme/handlers

## Notes
  * A personal [access token](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/creating-a-personal-access-token) can be used in place of [Web application flow](https://docs.github.com/en/developers/apps/building-oauth-apps/authorizing-oauth-apps#web-application-flow).  The instructions in the link are easy to follow.

== Detailed Description
This handler is used to remove access from repositories for teams. After authorizing the given account using a GitHub token, the defined team will no longer have access to defined repositories. THIS DOES NOT DELETE THE REPOSITORIES.
