# OpenapiClient::PaymentTotalsRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**print_receipt** | **Boolean** | set if the terminal should print a receipt immediately. Receipt data us sent back in the response regardless of this setting | [optional] 
**transaction_id** | **String** |  | [optional] 
**sub_totals** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaymentTotalsRequest.new(print_receipt: null,
                                 transaction_id: null,
                                 sub_totals: null)
```


