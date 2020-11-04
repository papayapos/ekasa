# OpenapiClient::PaxTotalsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**result** | **String** | Operation result. \&quot;0\&quot; for success, anything else for failure | [optional] 
**resp_message** | **String** | Additional text information. | [optional] 
**host_counters** | [**Array&lt;PaxTotalsResponseCounter&gt;**](PaxTotalsResponseCounter.md) |  | [optional] 
**terminal_counters** | [**Array&lt;PaxTotalsResponseCounter&gt;**](PaxTotalsResponseCounter.md) |  | [optional] 
**customer_receipt** | **String** | Customer receipt (formatted text) | [optional] 
**merchant_receipt** | **String** | Merchant receipt (formatted text) | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaxTotalsResponse.new(result: 0,
                                 resp_message: null,
                                 host_counters: null,
                                 terminal_counters: null,
                                 customer_receipt: null,
                                 merchant_receipt: null)
```


