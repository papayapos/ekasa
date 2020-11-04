# OpenapiClient::DocumentResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**warning** | **String** | Filled only if any warning | [optional] 
**document** | [**Document**](Document.md) |  | [optional] 
**documents** | [**Array&lt;Document&gt;**](Document.md) | List of documents available only for offline eKasa documents | [optional] 
**error_message** | **String** |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::DocumentResponse.new(warning: Warning, you should solve this, but eKasa works,
                                 document: null,
                                 documents: null,
                                 error_message: null)
```


