# https://github.com/zmartzone/mod_auth_openidc/blob/master/auth_openidc.conf
type Apache::OIDCSettings = Struct[
  {
    Optional['RedirectURI']                                => Variant[Stdlib::HTTPSUrl, Stdlib::HttpUrl, Pattern[/^\/[A-Za-z0-9\-\._%\/]*$/]],
    Optional['CryptoPassphrase']                           => String[1],
    Optional['MetadataDir']                                => String[1],
    Optional['ProviderMetadataURL']                        => Stdlib::HTTPSUrl,
    Optional['ProviderIssuer']                             => String[1],
    Optional['ProviderAuthorizationEndpoint']              => Stdlib::HTTPSUrl,
    Optional['ProviderJwksUri']                            => Stdlib::HTTPSUrl,
    Optional['ProviderTokenEndpoint']                      => Stdlib::HTTPSUrl,
    Optional['ProviderTokenEndpointAuth']                  => Enum['client_secret_basic', 'client_secret_post', 'client_secret_jwt', 'private_key_jwt', 'none'],
    Optional['ProviderTokenEndpointParams']                => Pattern[/^[A-Za-z0-9\-\._%]+=[A-Za-z0-9\-\._%]+(&[A-Za-z0-9\-\._%]+=[A-Za-z0-9\-\._%]+)*$/],
    Optional['ProviderUserInfoEndpoint']                   => Stdlib::HTTPSUrl,
    Optional['ProviderCheckSessionIFrame']                 => Stdlib::HTTPSUrl,
    Optional['ProviderEndSessionEndpoint']                 => Stdlib::HTTPSUrl,
    Optional['ProviderRevocationEndpoint']                 => Stdlib::HTTPSUrl,
    Optional['ProviderBackChannelLogoutSupported']         => Apache::OnOff,
    Optional['ProviderRegistrationEndpointJson']           => String[1],
    Optional['Scope']                                      => Pattern[/^\"?[A-Za-z0-9\-\._\s]+\"?$/],
    Optional['AuthRequestParams']                          => Pattern[/^[A-Za-z0-9\-\._%]+=[A-Za-z0-9\-\._%]+(&[A-Za-z0-9\-\._%]+=[A-Za-z0-9\-\._%]+)*$/],
    Optional['SSLValidateServer']                          => Apache::OnOff ,
    Optional['UserInfoRefreshInterval']                    => Variant[Integer[-1], Pattern[/^[0-9]+(\s+(logout_on_error|authenticate_on_error|502_on_error))?$/]],
    Optional['JWKSRefreshInterval']                        => Integer[-1],
    Optional['UserInfoTokenMethod']                        => Enum['authz_header', 'post_param'],
    Optional['ProviderAuthRequestMethod']                  => Enum['GET', 'POST', 'PAR'],
    Optional['PublicKeyFiles']                             => String[1],
    Optional['PrivateKeyFiles']                            => String[1],
    Optional['ResponseType']                               => Enum['code', 'id_token', 'id_token token', 'code id_token', 'code token', 'code id_token token'],
    Optional['ResponseMode']                               => Enum['fragment', 'query', 'form_post'],
    Optional['ClientID']                                   => String[1],
    Optional['ClientSecret']                               => String[1],
    Optional['ClientTokenEndpointCert']                    => String[1],
    Optional['ClientTokenEndpointKey']                     => String[1],
    Optional['ClientTokenEndpointKeyPassword']             => String[1],
    Optional['ClientName']                                 => String[1],
    Optional['ClientContact']                              => String[1],
    Optional['PKCEMethod']                                 => Enum['plain', 'S256', 'referred_tb', 'none'],
    Optional['TokenBindingPolicy']                         => Enum['disabled', 'optional', 'required', 'enforced'],
    Optional['ClientJwksUri']                              => Stdlib::HTTPSUrl,
    Optional['IDTokenSignedResponseAlg']                   => Enum['RS256', 'RS384', 'RS512', 'PS256', 'PS384', 'PS512', 'HS256', 'HS384', 'HS512', 'ES256', 'ES384', 'ES512'],
    Optional['IDTokenEncryptedResponseAlg']                => Enum['RSA1_5', 'A128KW', 'A256KW', 'RSA-OAEP'],
    Optional['IDTokenEncryptedResponseEnc']                => Enum['A128CBC-HS256', 'A256CBC-HS512', 'A256GCM'],
    Optional['UserInfoSignedResponseAlg']                  => Enum['RS256', 'RS384', 'RS512', 'PS256', 'PS384', 'PS512', 'HS256', 'HS384', 'HS512', 'ES256', 'ES384', 'ES512'],
    Optional['UserInfoEncryptedResponseAlg']               => Enum['RSA1_5', 'A128KW', 'A256KW', 'RSA-OAEP'],
    Optional['UserInfoEncryptedResponseEnc']               => Enum['A128CBC-HS256', 'A256CBC-HS512', 'A256GCM'],
    Optional['OAuthServerMetadataURL']                     => Stdlib::HTTPSUrl,
    Optional['AuthIntrospectionEndpoint']                  => Stdlib::HTTPSUrl,
    Optional['OAuthClientID']                              => String[1],
    Optional['OAuthClientSecret']                          => String[1],
    Optional['OAuthIntrospectionEndpoint']                 => String[1],
    Optional['OAuthIntrospectionEndpointAuth']             => Enum['client_secret_basic', 'client_secret_post', 'client_secret_jwt', 'private_key_jwt', 'bearer_access_token', 'none'],
    Optional['OAuthIntrospectionClientAuthBearerToken']    => String[1],
    Optional['OAuthIntrospectionEndpointCert']             => String[1],
    Optional['OAuthIntrospectionEndpointKey']              => String[1],
    Optional['OAuthIntrospectionEndpointKeyPassword']      => String[1],
    Optional['OAuthIntrospectionEndpointMethod']           => Enum['POST', 'GET'],
    Optional['OAuthIntrospectionEndpointParams']           => Pattern[/^[A-Za-z0-9\-\._%]+=[A-Za-z0-9\-\._%]+(&[A-Za-z0-9\-\._%]+=[A-Za-z0-9\-\._%]+)*$/],
    Optional['OAuthIntrospectionTokenParamName']           => String[1],
    Optional['OAuthTokenExpiryClaim']                      => Pattern[/^[A-Za-z0-9\-\._]+(\s(absolute|relative))?(\s(mandatory|optional))?$/],
    Optional['OAuthTokenIntrospectionInterval']            => Integer[-1],
    Optional['OAuthSSLValidateServer']                     => Apache::OnOff,
    Optional['OAuthVerifySharedKeys']                      => String[1],
    Optional['OAuthVerifyCertFiles']                       => String[1],
    Optional['OAuthVerifyJwksUri']                         => Stdlib::HTTPSUrl,
    Optional['OAuthRemoteUserClaim']                       => String[1],
    Optional['OAuthAcceptTokenAs']                         => Pattern[/^((header|post|query|cookie\:[A-Za-z0-9\-\._]+|basic)\s?)+$/],
    Optional['OAuthAccessTokenBindingPolicy']              => Enum['disabled', 'optional', 'required', 'enforced'],
    Optional['Cookie']                                     => String[1],
    Optional['CookieDomain']                               => String[1],
    Optional['CookiePath']                                 => String[1],
    Optional['SessionCookieChunkSize']                     => Integer[-1],
    Optional['CookieHTTPOnly']                             => Apache::OnOff,
    Optional['CookieSameSite']                             => Apache::OnOff,
    Optional['PassCookies']                                => String[1],
    Optional['StripCookies']                               => String[1],
    Optional['StateMaxNumberOfCookies']                    => Pattern[/^[0-9]+(\s(false|true))?$/],
    Optional['SessionInactivityTimeout']                   => Integer[-1],
    Optional['SessionMaxDuration']                         => Integer[-1],
    Optional['SessionType']                                => Pattern[/^(server-cache(:persistent)?|client-cookie(:persistent|:store_id_token|:persistent:store_id_token)?)$/],
    Optional['SessionCacheFallbackToCookie']               => Apache::OnOff,
    Optional['CacheType']                                  => Enum['shm', 'memcache', 'file', 'redis'],
    Optional['CacheDir']                                   => String[1],
    Optional['CacheEncrypt']                               => Apache::OnOff,
    Optional['CacheShmMax']                                => Integer[-1],
    Optional['CacheShmEntrySizeMax']                       => Integer[-1],
    Optional['CacheFileCleanInterval']                     => Integer[-1],
    Optional['MemCacheServers']                            => String[1],
    Optional['MemCacheConnectionsHMax']                    => Integer[-1],
    Optional['MemCacheConnectionsMin']                     => Integer[-1],
    Optional['MemCacheConnectionsSMax']                    => Integer[-1],
    Optional['MemCacheConnectionsTTL']                     => Integer[-1],
    Optional['RedisCacheServer']                           => String[1],
    Optional['RedisCachePassword']                         => String,
    Optional['RedisCacheConnectTimeout']                   => Pattern[/^[0-9]+(\s[0-9]+)?$/],
    Optional['RedisCacheDatabase']                         => Integer[-1],
    Optional['RedisCacheTimeout']                          => Integer[-1],
    Optional['RedisCacheUsername']                         => String[1],
    Optional['DiscoverURL']                                => Variant[Stdlib::HTTPSUrl, Stdlib::HttpUrl],
    Optional['HTMLErrorTemplate']                          => String[1],
    Optional['DefaultURL']                                 => Variant[Stdlib::HTTPSUrl, Stdlib::HttpUrl],
    Optional['PathScope']                                  => Pattern[/^\"?[A-Za-z0-9\-\._\s]+\"?$/],
    Optional['PathAuthRequestParams']                      => Pattern[/^[A-Za-z0-9\-\._%]+=[A-Za-z0-9\-\._%]+(&[A-Za-z0-9\-\._%]+=[A-Za-z0-9\-\._%]+)*$/],
    Optional['IDTokenIatSlack']                            => Integer[-1],
    Optional['ClaimPrefix']                                => String,
    Optional['ClaimDelimiter']                             => Pattern[/^.$/],
    Optional['RemoteUserClaim']                            => String[1],
    Optional['PassIDTokenAs']                              => Pattern[/^((claims|payload|serialized)\s?)+$/],
    Optional['PassUserInfoAs']                             => Pattern[/^((claims|json(:([A-Za-z0-9\-\._])+)?|(signed_)?jwt(:([A-Za-z0-9\-\._])+)?)\s?)+$/],
    Optional['PassClaimsAs']                               => Pattern[/^(none|headers|environment|both)?\s?(latin1|base64url|none)?$/],
    Optional['AuthNHeader']                                => String[1],
    Optional['HTTPTimeoutLong']                            => Integer[-1],
    Optional['HTTPTimeoutShort']                           => Integer[-1],
    Optional['StateTimeout']                               => Integer[-1],
    Optional['ScrubRequestHeaders']                        => Apache::OnOff,
    Optional['OutgoingProxy']                              => String[1],
    Optional['UnAuthAction']                               => Pattern[/^(auth|pass|401|407|410)(\s.*)?$/],
    Optional['UnAutzAction']                               => Pattern[/^(401|403|302|auth)(\s.*)?$/],
    Optional['PreservePost']                               => Apache::OnOff,
    Optional['PreservePostTemplates']                      => String[1],
    Optional['PassRefreshToken']                           => Apache::OnOff,
    Optional['RequestObject']                              => String[1],
    Optional['ProviderMetadataRefreshInterval']            => Integer[-1],
    Optional['InfoHook']                                   => Pattern[/^((iat|access_token|access_token_expires|id_token|id_token_hint|userinfo|refresh_token|exp|timeout|remote_user|session)\s?)+$/],
    Optional['BlackListedClaims']                          => String[1],
    Optional['WhiteListedClaims']                          => String[1],
    Optional['RefreshAccessTokenBeforeExpiry']             => Pattern[/^[0-9]+(\s(logout_on_error|authenticate_on_error|502_on_error))?$/],
    Optional['XForwardedHeaders']                          => String[1],
    Optional['CABundlePath']                               => String[1],
    Optional['DefaultLoggedOutURL']                        => String[1],
    Optional['DPoPMode']                                   => String[1],
    Optional['FilterClaimsExpr']                           => String[1],
    Optional['LogoutRequestParams']                        => Pattern[/^[^=]+=[^&]+(&[^=]+=[^&]+)*$/],
    Optional['LogoutXFrameOptions']                        => String[1],
    Optional['MetricsData']                                => String[1],
    Optional['MetricsPublish']                             => String[1],
    Optional['PassAccessToken']                            => Apache::OnOff,
    Optional['ProviderPushedAuthorizationRequestEndpoint'] => Stdlib::HttpUrl,
    Optional['ProviderSignedJwksUri']                      => String[1],
    Optional['ProviderVerifyCertFiles']                    => String[1],
    Optional['RedirectURLsAllowed']                        => String[1],
    Optional['StateCookiePrefix']                          => String,
    Optional['StateInputHeaders']                          => Enum['user-agent', 'x-forwarded-for', 'both', 'none'],
    Optional['TraceParent']                                => Enum['off', 'generate', 'propagate'],
    Optional['UserInfoClaimsExpr']                         => String[1],
    Optional['ValidateIssuer']                             => Apache::OnOff,
  }
]
