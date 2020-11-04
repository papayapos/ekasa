# OpenapiClient::PhysicalAddress

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**country** | **String** | Country. e.g. Slovenská Republika (optional) | [optional] 
**municipality** | **String** | Municipality, its name of town, e.g. Karlova ves (mandatory) | [optional] 
**street** | **String** | Name of the street, e.g. Čaklovská (mandatory) | [optional] 
**building_number** | **String** | orientačné číslo (optional) | [optional] 
**property_registration_number** | **String** | číslo budovy (optional) | [optional] 
**postal_code** | **String** | Postal code (mandatory) | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PhysicalAddress.new(country: Slovenská republika,
                                 municipality: Bratislava,
                                 street: Miletičova,
                                 building_number: 2/560,
                                 property_registration_number: 22,
                                 postal_code: 99999)
```


