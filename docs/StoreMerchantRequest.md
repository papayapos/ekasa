# OpenapiClient::StoreMerchantRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**identification_data** | **String** | Identification data generated in clients eKasa account. XML file as string. | 
**authentication_data** | **String** | Authentication data generated in clients eKasa account. XML file as string. | 
**key_store_password** | **String** | Password for keystore | 
**private_key_password** | **String** | Password for private key | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::StoreMerchantRequest.new(identification_data: null,
                                 authentication_data: null,
                                 key_store_password: null,
                                 private_key_password: null)
```


