# Github API V1
Github REST API V1 Client

## Parameters
* [Error Handling]
  Select between returning an error message, or raising an exception.
* [Method]
  HTTP Method to use for the Kinetic Core API call being made.
  Options are:
    - GET
    - POST
    - PUT
    - PATCH
    - DELETE
* [Path]
  The relative API path (to the `api_location` info value) that will be called.
  This value should begin with a forward slash `/`.
* [Body]
  The body content (JSON) that will be sent for POST, PUT, and PATCH requests.

## Results
* [Response Body]
  The returned value from the Rest Call (JSON format)

### Info
* [access_token]
  * As of 2/26/1016, Access Tokens using GitHub's oauth2 in an organization requires approval than a callbackURL, where the access token is sent to.
  In order to request this token, you must have a client_ID and a Client_Secret.  This can be found in
  the Org's user setting on github.com when you when you register a new OAuth application.  Here the user should
  select the scopes 'repo' and the appropriate corresponding subsequent scopes you desire in the repository creation process.
  Since you need a callback URL, the user may want to consider a third party web client such as Google's PostMan in
  order to make the request and generate the token.  Once the user has acquired this token, they may reuse it.
  * A personal [access token](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/creating-a-personal-access-token) will also work.