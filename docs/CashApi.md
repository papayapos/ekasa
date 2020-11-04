# OpenapiClient::CashApi

All URIs are relative to *http://localhost:13083*

Method | HTTP request | Description
------------- | ------------- | -------------
[**do_post1**](CashApi.md#do_post1) | **POST** /api/cash | Cash deposit/withdraw



## do_post1

> CashResponse do_post1(cash_request)

Cash deposit/withdraw

Create cash deposit or withdraw

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::CashApi.new
cash_request = OpenapiClient::CashRequest.new # CashRequest | Cash request

begin
  #Cash deposit/withdraw
  result = api_instance.do_post1(cash_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling CashApi->do_post1: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cash_request** | [**CashRequest**](CashRequest.md)| Cash request | 

### Return type

[**CashResponse**](CashResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

