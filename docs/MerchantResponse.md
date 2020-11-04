# OpenapiClient::MerchantResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**warning** | **String** | Filled only if any warning | [optional] 
**merchant** | [**Merchant**](Merchant.md) |  | [optional] 
**error_message** | **String** |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::MerchantResponse.new(warning: Warning, you should solve this, but eKasa works,
                                 merchant: null,
                                 error_message: null)
```


