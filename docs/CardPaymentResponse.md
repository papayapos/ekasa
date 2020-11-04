# OpenapiClient::CardPaymentResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**warning** | **String** | Filled only if any warning | [optional] 
**success** | **Boolean** | shows if the payment process succeeded | [optional] 
**message** | [**PaxPaymentResponse**](PaxPaymentResponse.md) |  | [optional] 
**error_message** | **String** |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::CardPaymentResponse.new(warning: Warning, you should solve this, but eKasa works,
                                 success: null,
                                 message: null,
                                 error_message: null)
```


