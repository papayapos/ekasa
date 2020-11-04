# OpenapiClient::OtherApi

All URIs are relative to *http://localhost:13083*

Method | HTTP request | Description
------------- | ------------- | -------------
[**do_post9**](OtherApi.md#do_post9) | **POST** /api/print | Print string



## do_post9

> RawResponse do_post9(print_string_request)

Print string

Print custom string

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::OtherApi.new
print_string_request = OpenapiClient::PrintStringRequest.new # PrintStringRequest | Print string request

begin
  #Print string
  result = api_instance.do_post9(print_string_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling OtherApi->do_post9: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **print_string_request** | [**PrintStringRequest**](PrintStringRequest.md)| Print string request | 

### Return type

[**RawResponse**](RawResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

