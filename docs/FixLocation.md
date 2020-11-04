# OpenapiClient::FixLocation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | [**EkasaStatus**](EkasaStatus.md) |  | [optional] 
**printer_status** | **String** | Printer status | [optional] 
**create_date** | **DateTime** |  | [optional] 
**physical_address** | [**PhysicalAddress**](PhysicalAddress.md) |  | [optional] 
**gps** | [**Gps**](Gps.md) |  | [optional] 
**other** | **String** |  | [optional] 
**use_last_merchant** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::FixLocation.new(status: null,
                                 printer_status: NORMAL,
                                 create_date: null,
                                 physical_address: null,
                                 gps: null,
                                 other: null,
                                 use_last_merchant: null)
```


