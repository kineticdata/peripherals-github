# GitHub Organization Repository Creation
  Creates Repository to a Github organization.

## Info Values
  * [access_token] 
    The access token for the Github account.
  * [org_name] 
    The organization name you wish to create a repository in.
  * [enable_debug_logging] 
    True or False whether to log.

## Parameters
  * [Error Handling] 
    Select between returning an error message, or raising an exception.
  * [Organization Name] 
    Name of organization of which you wish to create a new repository in.  The parameter will override the Info Value.
  * [Visibility] 
    The options are private or public. default: public.
  * [Name]  
    Name of desired repository user wishes to create.
  * [Description] 
    Description of the existing repository you wish to create.

## Results
  * [Handler Error Message]
    Error message if an error was encountered and Error Handling is set to "Error Message".
  * [Response Body]
    The returned value from the Rest Call (JSON format)

### Notes
* [access_token]
  As of 2/26/2016, Access Tokens using GitHub's oauth2 in an organization requires approval than a callbackURL, where the access token is sent to.
  In order to request this token, you must have a client_ID and a Client_Secret.  This can be found in
  the Org's user setting on github.com when you when you register a new OAuth application.  Here the user should
  select the scopes 'repo' and the appropriate corresponding subsequent scopes you desire in the repository creation process.
  Since you need a callback URL, the user may want to consider a third party web client such as Google's PostMan in
  order to make the request and generate the token.  Once the user has acquired this token, they may reuse it.


### Detailed Description
This handler creates a github repository for an organization.
