# OpenapiClient::CardPaymentRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external_id** | **String** | id from external software | [optional] 
**request_contents** | [**PaxPaymentRequest**](PaxPaymentRequest.md) |  | [optional] 
**print_receipt** | **Boolean** | set if the terminal should print a receipt immediately. Receipt data us sent back in the response regardless of this setting | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::CardPaymentRequest.new(external_id: 28f3af59-52af-42a6-a217-fc26278482db,
                                 request_contents: null,
                                 print_receipt: null)
```


