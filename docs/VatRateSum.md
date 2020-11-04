# OpenapiClient::VatRateSum

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** | Vat rate type. Allowed values VAT_0, VAT_10, VAT_20 | [optional] 
**base** | **Float** | Base sum for vat | [optional] 
**vat** | **Float** | Issued vat | [optional] 
**sum** | **Float** | Total sum with vat | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::VatRateSum.new(title: VAT_20,
                                 base: null,
                                 vat: null,
                                 sum: null)
```


