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
        "operation": "CP",
        "amount": "1.5",
        "TransactionId": "28f3af59-52af-42a6-a217-fc26278482db"
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
        "operation": "CP",
        "amount": "1.5",
        "TransactionId": "28f3af59-52af-42a6-a217-fc26278482db"
    },
    "printReceipt": false
}
```

### Request Parameters

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external_id** | **String** | id from external software | [optional] 
**request_contents** | [**PaxPaymentRequest**](TerminalCardPaymentApi.md#PaxPaymentRequest) |  | [optional] 
**print_receipt** | **Boolean** | set if the terminal should print a receipt immediately. Receipt data us sent back in the response regardless of this setting | [optional] 

#### PaxPaymentRequest

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**operation** | **String** | Operation identifier. CP for payment, CC for cancel, CR for refund | [optional] 
**amount** | **String** | Amount, as a string, with a . as a decimal separator | [optional] 
**transaction_id** | **String** | ID of the transaction, for the terminal | [optional] 

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
**error_message** | **String** |  | [optional] 

#### PaxPaymentResponse

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**result** | **String** | Operation result | [optional] 
**resp_message** | **String** | Additional text information of Transaction result. It could be sent by host ,or locally by Payment application. | [optional] 
**auth_code** | **String** | Autorisation Code | [optional] 
**card_brand** | **String** | Card Brand (VISA , MasterCard ...) | [optional] 
**bin** | **String** | Card BIN (first 6 digits of card number) | [optional] 
**host_rc** | **String** | Host response code | [optional] 
**pi_nindicator** | **String** | Information , whether PIN was entered (Values: Y/N) | [optional] 
**signature** | **String** | Information , whether Signature checking is required (Values: Y/N) | [optional] 
**customer_receipt** | **String** | Customer receipt (formatted text) | [optional] 
**merchant_receipt** | **String** | Merchant receipt (formatted text) | [optional] 
