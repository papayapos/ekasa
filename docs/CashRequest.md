# OpenapiClient::CashRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external_id** | **String** | External id from external software | [optional] 
**printer** | [**Printer**](Printer.md) |  | [optional] 
**amount** | **Float** | Cash in/out to/from cashier | [optional] 
**footer** | **String** | Custom text to footer | [optional] 
**exception** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::CashRequest.new(external_id: null,
                                 printer: null,
                                 amount: null,
                                 footer: null,
                                 exception: null)
```


