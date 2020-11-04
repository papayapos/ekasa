# OpenapiClient::LocationApi

All URIs are relative to *http://localhost:13083*

Method | HTTP request | Description
------------- | ------------- | -------------
[**do_post11**](LocationApi.md#do_post11) | **POST** /api/location/update | Update location



## do_post11

> LocationResponse do_post11(update_location_request)

Update location

Update cash register location

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::LocationApi.new
update_location_request = OpenapiClient::UpdateLocationRequest.new # UpdateLocationRequest | Update location request

begin
  #Update location
  result = api_instance.do_post11(update_location_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling LocationApi->do_post11: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_location_request** | [**UpdateLocationRequest**](UpdateLocationRequest.md)| Update location request | 

### Return type

[**LocationResponse**](LocationResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

