# OpenapiClient::GetDocumentRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**document_by_external_id** | [**DocumentByExternalId**](DocumentByExternalId.md) |  | [optional] 
**document_by_okp** | [**DocumentByOkp**](DocumentByOkp.md) |  | [optional] 
**document_by_sequence_id** | [**DocumentBySequenceId**](DocumentBySequenceId.md) |  | [optional] 
**document_by_uuid** | [**DocumentByUUID**](DocumentByUUID.md) |  | [optional] 
**printer** | [**Printer**](Printer.md) |  | [optional] 
**offline_documents** | **Boolean** | For getting all documents that are offline (still not sent to eKasa) | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::GetDocumentRequest.new(document_by_external_id: null,
                                 document_by_okp: null,
                                 document_by_sequence_id: null,
                                 document_by_uuid: null,
                                 printer: null,
                                 offline_documents: null)
```


