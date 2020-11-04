# OpenapiClient::DocumentApi

All URIs are relative to *http://localhost:13083*

Method | HTTP request | Description
------------- | ------------- | -------------
[**do_post10**](DocumentApi.md#do_post10) | **POST** /api/document/update | Update broken document
[**do_post2**](DocumentApi.md#do_post2) | **POST** /api/document/get | Get document
[**do_post4**](DocumentApi.md#do_post4) | **POST** /api/document/get/offline | Get offline documents
[**do_post6**](DocumentApi.md#do_post6) | **POST** /api/document/send/offline | Send offline requests
[**do_post7**](DocumentApi.md#do_post7) | **POST** /api/document/store | Store document



## do_post10

> DocumentResponse do_post10(get_document_request)

Update broken document

Update broken document with new parameters

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::DocumentApi.new
get_document_request = OpenapiClient::GetDocumentRequest.new # GetDocumentRequest | Update document request

begin
  #Update broken document
  result = api_instance.do_post10(get_document_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DocumentApi->do_post10: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **get_document_request** | [**GetDocumentRequest**](GetDocumentRequest.md)| Update document request | 

### Return type

[**DocumentResponse**](DocumentResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## do_post2

> DocumentResponse do_post2(get_document_request)

Get document

Get document by Identificator

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::DocumentApi.new
get_document_request = OpenapiClient::GetDocumentRequest.new # GetDocumentRequest | Get document request

begin
  #Get document
  result = api_instance.do_post2(get_document_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DocumentApi->do_post2: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **get_document_request** | [**GetDocumentRequest**](GetDocumentRequest.md)| Get document request | 

### Return type

[**DocumentResponse**](DocumentResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## do_post4

> DocumentResponse do_post4(offline_documents_filter)

Get offline documents

Get offline documents and print report

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::DocumentApi.new
offline_documents_filter = OpenapiClient::OfflineDocumentsFilter.new # OfflineDocumentsFilter | Get offline document request

begin
  #Get offline documents
  result = api_instance.do_post4(offline_documents_filter)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DocumentApi->do_post4: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offline_documents_filter** | [**OfflineDocumentsFilter**](OfflineDocumentsFilter.md)| Get offline document request | 

### Return type

[**DocumentResponse**](DocumentResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## do_post6

> CashResponse do_post6(cash_request)

Send offline requests

Sends all or limit of offline requests

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::DocumentApi.new
cash_request = OpenapiClient::CashRequest.new # CashRequest | Send offline request

begin
  #Send offline requests
  result = api_instance.do_post6(cash_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DocumentApi->do_post6: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cash_request** | [**CashRequest**](CashRequest.md)| Send offline request | 

### Return type

[**CashResponse**](CashResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## do_post7

> DocumentResponse do_post7(store_document_request)

Store document

Store new document to eKasa

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::DocumentApi.new
store_document_request = OpenapiClient::StoreDocumentRequest.new # StoreDocumentRequest | Store document request

begin
  #Store document
  result = api_instance.do_post7(store_document_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DocumentApi->do_post7: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_document_request** | [**StoreDocumentRequest**](StoreDocumentRequest.md)| Store document request | 

### Return type

[**DocumentResponse**](DocumentResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

