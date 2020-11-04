# OpenapiClient::EkasaStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error** | [**EkasaError**](EkasaError.md) |  | [optional] 
**warning** | [**EkasaWarning**](EkasaWarning.md) |  | [optional] 
**document_to_fix** | [**Document**](Document.md) |  | [optional] 
**location_to_fix** | [**Location**](Location.md) |  | [optional] 
**ok** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::EkasaStatus.new(error: null,
                                 warning: null,
                                 document_to_fix: null,
                                 location_to_fix: null,
                                 ok: null)
```


