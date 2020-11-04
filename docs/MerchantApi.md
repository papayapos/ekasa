# OpenapiClient::MerchantApi

All URIs are relative to *http://localhost:13083*

Method | HTTP request | Description
------------- | ------------- | -------------
[**do_post3**](MerchantApi.md#do_post3) | **POST** /api/merchant/get | Get merchant
[**do_post8**](MerchantApi.md#do_post8) | **POST** /api/merchant/store | Store merchant



## do_post3

> MerchantResponse do_post3(get_merchant_request)

Get merchant

Get merchant

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::MerchantApi.new
get_merchant_request = OpenapiClient::GetMerchantRequest.new # GetMerchantRequest | Get merchant request

begin
  #Get merchant
  result = api_instance.do_post3(get_merchant_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MerchantApi->do_post3: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **get_merchant_request** | [**GetMerchantRequest**](GetMerchantRequest.md)| Get merchant request | 

### Return type

[**MerchantResponse**](MerchantResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## do_post8

> MerchantResponse do_post8(store_merchant_request)

Store merchant

Store new merchant. Up to 20.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::MerchantApi.new
store_merchant_request = OpenapiClient::StoreMerchantRequest.new # StoreMerchantRequest | Store merchant request

begin
  #Store merchant
  result = api_instance.do_post8(store_merchant_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MerchantApi->do_post8: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_merchant_request** | [**StoreMerchantRequest**](StoreMerchantRequest.md)| Store merchant request | 

### Return type

[**MerchantResponse**](MerchantResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

