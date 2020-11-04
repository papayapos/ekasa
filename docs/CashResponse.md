# OpenapiClient::CashResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**warning** | **String** | Filled only if any warning | [optional] 
**cash** | [**Cash**](Cash.md) |  | [optional] 
**error_message** | **String** |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::CashResponse.new(warning: Warning, you should solve this, but eKasa works,
                                 cash: null,
                                 error_message: null)
```


