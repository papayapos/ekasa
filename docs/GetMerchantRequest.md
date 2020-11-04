# OpenapiClient::GetMerchantRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**merchant_by_sequence_id** | [**MerchantBySequenceId**](MerchantBySequenceId.md) |  | [optional] 
**merchant_by_cash_register_code** | [**MerchantByCashRegisterCode**](MerchantByCashRegisterCode.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::GetMerchantRequest.new(merchant_by_sequence_id: null,
                                 merchant_by_cash_register_code: null)
```


