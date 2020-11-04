# OpenapiClient::TerminalApi

All URIs are relative to *http://localhost:13083*

Method | HTTP request | Description
------------- | ------------- | -------------
[**do_post**](TerminalApi.md#do_post) | **POST** /api/terminal/pay | Card payment
[**do_post5**](TerminalApi.md#do_post5) | **POST** /api/terminal/totals | Terminal totals report



## do_post

> CardPaymentResponse do_post(card_payment_request)

Card payment

Start a card payment. Usually, only one terminal operation can be running at once

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::TerminalApi.new
card_payment_request = OpenapiClient::CardPaymentRequest.new # CardPaymentRequest | Card payment request

begin
  #Card payment
  result = api_instance.do_post(card_payment_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling TerminalApi->do_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **card_payment_request** | [**CardPaymentRequest**](CardPaymentRequest.md)| Card payment request | 

### Return type

[**CardPaymentResponse**](CardPaymentResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## do_post5

> PaymentTotalsResponse do_post5(payment_totals_request)

Terminal totals report

Payment terminal generates a totals/subtotals report

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::TerminalApi.new
payment_totals_request = OpenapiClient::PaymentTotalsRequest.new # PaymentTotalsRequest | Payment totals request

begin
  #Terminal totals report
  result = api_instance.do_post5(payment_totals_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling TerminalApi->do_post5: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_totals_request** | [**PaymentTotalsRequest**](PaymentTotalsRequest.md)| Payment totals request | 

### Return type

[**PaymentTotalsResponse**](PaymentTotalsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

