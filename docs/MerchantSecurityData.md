# OpenapiClient::MerchantSecurityData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key_store_base64** | **Array&lt;String&gt;** | Key store in BASE64 | 
**key_store_password** | **String** | Password for keystore | 
**certificate_alias** | **String** | Certificate alias | 
**private_key_password** | **String** | Password for private key | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::MerchantSecurityData.new(key_store_base64: null,
                                 key_store_password: Heslo123,
                                 certificate_alias: 88812345678900001,
                                 private_key_password: Heslo1234)
```


