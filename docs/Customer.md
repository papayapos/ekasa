# OpenapiClient::Customer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | [**EkasaStatus**](EkasaStatus.md) |  | [optional] 
**printer_status** | **String** | Printer status | [optional] 
**id** | **String** | Customer ID. Only numbers and alpha numeric characters are allowed | 
**customer_id_type** | **String** | Customer type can be ICO, DIC, IC_DPH, or INE | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Customer.new(status: null,
                                 printer_status: NORMAL,
                                 id: 876106b1-02c5-4724-9b41-3f0a3cbe4acd,
                                 customer_id_type: null)
```


