# OpenapiClient::PaymentTotalsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**warning** | **String** | Filled only if any warning | [optional] 
**success** | **Boolean** | Shows if request processing was successful | [optional] 
**message** | [**PaxTotalsResponse**](PaxTotalsResponse.md) |  | [optional] 
**error_message** | **String** |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaymentTotalsResponse.new(warning: Warning, you should solve this, but eKasa works,
                                 success: null,
                                 message: null,
                                 error_message: null)
```


