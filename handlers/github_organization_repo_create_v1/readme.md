# GitHub Organization Repository Creation
  Creates Repository to a Github organization.

## Info Values
  [access_token] 
    The access token for the Github account.
  
  [org_name] 
    The organization name you wish to create a repository in.
  
  [enable_debug_logging] 
    True or False whether to log.

## Parameters
  [Error Handling] 
    Select between returning an error message, or raising an exception.
  
  [Organization Name] 
    Name of organization of which you wish to create a new repository in.  The parameter will override the Info Value.
  
  [Visibility] 
    The options are private or public. default: public.
  
  [Name]
    Name of desired repository user wishes to create.
  
  [Description] 
    Description of the existing repository you wish to create.

## Results
  [Handler Error Message]
    Error message if an error was encountered and Error Handling is set to "Error Message".
  
  [Response Body]
    The returned value from the Rest Call (JSON format)

## Notes
In order to use the generic handler an access token is required.
  * A personal [access token](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/creating-a-personal-access-token) can be used in place of [Web application flow](https://docs.github.com/en/developers/apps/building-oauth-apps/authorizing-oauth-apps#web-application-flow).  The instructions in the link are easy to follow.
  * The access token will require the appropriate scope of 'repo' be set.  
  * For a user to create a repo for the organization the user must have admin permission.

## Detailed Description
This handler creates a github repository for an organization.
