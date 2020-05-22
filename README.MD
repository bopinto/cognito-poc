# MOD_AUTH_OPENIDC DEMO

The app contains a CGI script that lists the HTTP headers, located in http://localhost:8080/secure/print.cgi.

## App info

**App client**  
6jer0naksvn0hh4160dqfgpvma  
**App Secret**  
1rhdb1288sf7gcs1cjub8qfpasshcbnd28lu7mvkf6r28hochtik  
**Public**  
http://localhost:8080  
**Private**  
http://locahost:8080/secure  
**Logout URL**  
http://localhost:8080/secure/redirect_uri?logout=http%3A%2F%2Flocalhost%3A8080%2Flogout  
This will make the plugin invalidate the session in the app and the redirect URL will the redirect to Cognito to invalidate the session there (see the redirect rule in the `httpd.conf`).

### Build
Build docker image
```
make build
```

### Remove
Delete docker image
```
make remove
```

### Run
Run docker image
```
make run
```

### Endpoints  
**Auth**  
https://test-domain.auth.eu-west-2.amazoncognito.com/oauth2/authorize?client_id=6jer0naksvn0hh4160dqfgpvma&response_type=token&scope=aws.cognito.signin.user.admin+email+openid+phone+profile&redirect_uri=http://localhost:8080  
**Login**  
https://test-domain.auth.eu-west-2.amazoncognito.com/login?client_id=6jer0naksvn0hh4160dqfgpvma&response_type=code&scope=aws.cognito.signin.user.admin+email+openid+phone+profile&redirect_uri=http://localhost:8080  
**ProviderMetaUrl**  
https://cognito-idp.us-west-2.amazonaws.com/us-west-2_jer0naksvn0hh4160dqfgpvma/.well-known/openid-configuration  
