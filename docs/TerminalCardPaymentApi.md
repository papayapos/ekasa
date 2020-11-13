# TerminalApi

All URIs are relative to *https://localhost:13083*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Card Payment**](TerminalCardPaymentApi.md#CardPayment) | **POST** /api/terminal/pay | Card payment
[**Totals**](TerminalTotalsApi.md#Totals) | **POST** /api/terminal/totals | Terminal totals report

# CardPayment

Start a card payment. Only one terminal operation can be running at once

### Example

```bash
curl --location --request POST 'http://localhost:13083/api/terminal/pay' \
--data-raw '{
    "externalId": "28f3af59-52af-42a6-a217-fc26278482db",
    "requestContents": {
        "Operation": "CP",
        "Amount": "1.5",
        "TransactionID": "28f3af59-52af-42a6-a217-fc26278482db"
    },
    "printReceipt": false
}'
```

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### Example Request Body

```yaml
{
    "externalId": "28f3af59-52af-42a6-a217-fc26278482db",
    "requestContents": {
        "Operation": "CP",
        "Amount": "1.5",
        "TransactionID": "28f3af59-52af-42a6-a217-fc26278482db"
    },
    "printReceipt": false
}
```

### Request Parameters

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**externalId** | **String** | id from external software | [optional] 
**requestContents** | [**PaxPaymentRequest**](TerminalCardPaymentApi.md#PaxPaymentRequest) |  | [optional] 
**printReceipt** | **Boolean** | set if the terminal should print a receipt immediately. Receipt data us sent back in the response regardless of this setting | [optional] 

#### PaxPaymentRequest

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Operation** | **String** | Operation identifier. CP for payment, CC for cancel, CR for refund | [optional] 
**Amount** | **String** | Amount, as a string, with a . as a decimal separator | [optional] 
**TransactionID** | **String** | ID of the transaction, for the terminal | [optional] 

### Example Response Body

```yaml
{
  "warning": "Warning, you should solve this, but eKasa works",
  "success": true,
  "message": {
    "Result": "0",
    "RespMessage": "Ok",
    "AuthCode": "581281",
    "CardBrand": "Visa Prepaid",
    "BIN": "479608",
    "HostRC": "proident qui",
    "PINindicator": "N",
    "Signature": "N",
    "CustomerReceipt": "Customer receipt (formatted text)",
    "MerchantReceipt": "Merchant receipt (formatted text)"
  },
  "errorMessage": "Only if error occured"
}
```

### Response Parameters

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**warning** | **String** | Filled only if any warning | [optional] 
**success** | **Boolean** | shows if the payment process succeeded | [optional] 
**message** | [**PaxPaymentResponse**](TerminalCardPaymentApi.md#PaxPaymentResponse) |  | [optional] 
**errorMessage** | **String** |  | [optional] 

#### PaxPaymentResponse

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Result** | **String** | Operation result | [optional] 
**RespMessage** | **String** | Additional text information of Transaction result. It could be sent by host ,or locally by Payment application. | [optional] 
**AuthCode** | **String** | Autorisation Code | [optional] 
**CardBrand** | **String** | Card Brand (VISA , MasterCard ...) | [optional] 
**Bin** | **String** | Card BIN (first 6 digits of card number) | [optional] 
**HostRC** | **String** | Host response code | [optional] 
**PINindicator** | **String** | Information , whether PIN was entered (Values: Y/N) | [optional] 
**Signature** | **String** | Information , whether Signature checking is required (Values: Y/N) | [optional] 
**CustomerReceipt** | **String** | Customer receipt (formatted text) | [optional] 
**MerchantReceipt** | **String** | Merchant receipt (formatted text) | [optional] 
