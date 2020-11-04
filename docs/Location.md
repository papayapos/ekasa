# OpenapiClient::Location

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | [**EkasaStatus**](EkasaStatus.md) |  | [optional] 
**printer_status** | **String** | Printer status | [optional] 
**internal_id** | **Integer** |  | [optional] 
**physical_address** | [**PhysicalAddress**](PhysicalAddress.md) |  | [optional] 
**gps** | [**Gps**](Gps.md) |  | [optional] 
**other** | **String** |  | [optional] 
**create_date** | **DateTime** |  | [optional] 
**process_date** | **DateTime** |  | [optional] 
**cash_register_code** | **String** |  | [optional] 
**merchant** | [**Merchant**](Merchant.md) |  | [optional] 
**sending_count** | **Integer** |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Location.new(status: null,
                                 printer_status: NORMAL,
                                 internal_id: null,
                                 physical_address: null,
                                 gps: null,
                                 other: null,
                                 create_date: null,
                                 process_date: null,
                                 cash_register_code: null,
                                 merchant: null,
                                 sending_count: null)
```


