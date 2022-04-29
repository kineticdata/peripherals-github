# Github API V1
Github REST API V1 Client

## Info Values
  [access_token] 
    The access token for the Github account.
    
  [enable_debug_logging] 
    True or False whether to log.

## Parameters
  [Error Handling]
    Select between returning an error message, or raising an exception.

 [Method]
  HTTP Method to use for the Kinetic Core API call being made.
  
  Options are:
  - GET
  - POST
  - PUT
  - PATCH
  - DELETE

 [Path]
  The relative API path (to the `api_location` info value) that will be called.
  This value should begin with a forward slash `/`.

 [Body]
  The body content (JSON) that will be sent for POST, PUT, and PATCH requests.

## Results
 [Handler Error Message]
  Error message if an error was encountered and Error Handling is set to "Error Message".

 [Response Body]
  The returned value from the Rest Call (JSON format).

 [Response Code]
  The http code number that the request resulted in.

## Notes
In order to use the generic handler an access token is required.
  * Authorization to Github using oAuth2 in an organization requires approval and a callbackURL.  In Github terminology his is called [Web application flow](https://docs.github.com/en/developers/apps/building-oauth-apps/authorizing-oauth-apps#web-application-flow)
  
  In order to request this token, you must have a client_ID and a Client_Secret.  This can be found in the Org's user setting on github.com when you when you register a new OAuth application.  Here the user should select the scopes 'repo' and the appropriate corresponding subsequent scopes you desire in the repository creation process. Since you need a callback URL, the user may want to consider a third party web client such as [PostMan](https://www.postman.com/) in order to make the request and generate the token.  Once the user has acquired this token, they may reuse it.
  * A personal [access token](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/creating-a-personal-access-token) can be used in place of [Web application flow](https://docs.github.com/en/developers/apps/building-oauth-apps/authorizing-oauth-apps#web-application-flow).  The instructions in the link are easy to follow.