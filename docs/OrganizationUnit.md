# OpenapiClient::OrganizationUnit

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Venue name (optional) | [optional] 
**cash_register_code** | **String** | Code given to cash register by Tax office (mandatory) | 
**cash_register_type** | **String** | Type of cash register. If mobile define PORTABLE else STANDARD (mandatory) | 
**location** | [**Location**](Location.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::OrganizationUnit.new(name: Papaya Cafe,
                                 cash_register_code: 88812345678900001,
                                 cash_register_type: STANDARD,
                                 location: null)
```


