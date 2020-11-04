# OpenapiClient::UpdateLocationRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**create_date** | **DateTime** |  | [optional] 
**physical_address** | [**PhysicalAddress**](PhysicalAddress.md) |  | [optional] 
**gps** | [**Gps**](Gps.md) |  | [optional] 
**other_location** | **String** | Other location | [optional] 
**fix_location** | [**FixLocation**](FixLocation.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::UpdateLocationRequest.new(id: null,
                                 create_date: null,
                                 physical_address: null,
                                 gps: null,
                                 other_location: null,
                                 fix_location: null)
```


