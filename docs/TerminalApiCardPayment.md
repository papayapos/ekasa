# TerminalApi

All URIs are relative to *https://localhost:13083*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Terminal Activation**](TerminalApiRegister.md#Activation) | **POST** /api/terminal/register | Terminal Activation and Registration
[**Card Payment**](TerminalApiCardPayment.md#CardPayment) | **POST** /api/terminal/pay | Card payment
[**Totals**](TerminalApiTotals.md#Totals) | **POST** /api/terminal/totals | Terminal totals report

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
        "transactionId": "28f3af59-52af-42a6-a217-fc26278482db"
    },
    "printCustomerReceipt": true,
    "printMerchantReceipt": false
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
        "transactionId": "28f3af59-52af-42a6-a217-fc26278482db"
    },
    "printCustomerReceipt": true,
    "printMerchantReceipt": false
}
```


### Cancel previous payment example

```yaml
{
    "externalId": "28f3af59-52af-42a6-a217-fc26278482db",
    "requestContents": {
        "operation": "CC",
        "hostTransId": "04005663  210217",
        "transactionId": "28f3af59-52af-42a6-a217-fc26278482db"
    },
    "printCustomerReceipt": true,
    "printMerchantReceipt": false
}
```

### Request Parameters

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**externalId** | **String** | id from external software | [optional] 
**requestContents** | [**PaxPaymentRequest**](TerminalCardPaymentApi.md#PaxPaymentRequest) |  | [optional] 
**printCustomerReceipt** | **Boolean** | set if the terminal should print a receipt for customer immediately. Receipt data us sent back in the response regardless of this setting | [optional] 
**printMerchantReceipt** | **Boolean** | set if the terminal should print a receipt for merchant immediately. Receipt data us sent back in the response regardless of this setting | [optional] 

#### PaxPaymentRequest

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**operation** | **String** | Operation identifier. CP for payment, CC for cancel, CR for refund | [optional] 
**amount** | **String** | Amount, as a string, with a . as a decimal separator | [optional] 
**transactionId** | **String** | ID of the transaction, for the terminal | [optional] 
**hostTransId** | **String** | ID of the transaction in the payment host for the transaction that is to be canceled. Ignored if operation is not CC | [optional] 

### Example Response Body

```yaml
{
  "warning": "Warning, you should solve this, but eKasa works",
  "success": true,
  "message": {
    "result": "0",
    "respMessage": "Ok",
    "aid": "A0000000032010",
    "authCode": "581281",
    "cardBrand": "Visa Prepaid",
    "currencyCode": "978",
    "hostTransId": "04474A8A59210217",
    "maskedPan": "123456******7890",
    "sequenceNumber": "001003022",
    "terminalId": "POSCOM03",
    "transactionId": "d6292665-3bb3-438c-b40e-7b383dbd348c"
    "bin": "479608",
    "hostRc": "proident qui",
    "pinIndicator": "N",
    "signature": "N",
    "customerReceipt": "Customer receipt (formatted text)",
    "merchantReceipt": "Merchant receipt (formatted text)"
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
**result** | **String** | Operation result | [optional] 
**respMessage** | **String** | Additional text information of Transaction result. It could be sent by host ,or locally by Payment application. | [optional] 
**aid** | **String** | Authentication ID of the payment | [optional] 
**authCode** | **String** | Autorisation Code | [optional] 
**cardBrand** | **String** | Card Brand (VISA , MasterCard ...) | [optional] 
**currencyCode** | **String** | Numeric currency code according to ISO 4217 | [optional] 
**hostTransId** | **String** | Transaction ID in the payment host | [optional] 
**maskedPan** | **String** | Card number with middle digits masked by * characters | [optional] 
**sequenceNumber** | **String** | Sequence no. of the payment | [optional] 
**terminalId** | **String** | ID of the Pax terminal | [optional] 
**transactionId** | **String** | ID of the transaction, set in the request that called this payment | [optional] 
**bin** | **String** | Card BIN (first 6 digits of card number) | [optional] 
**hostRc** | **String** | Host response code | [optional] 
**pinIndicator** | **String** | Information , whether PIN was entered (Values: Y/N) | [optional] 
**signature** | **String** | Information , whether Signature checking is required (Values: Y/N) | [optional] 
**customerReceipt** | **String** | Customer receipt (formatted text) | [optional] 
**merchantReceipt** | **String** | Merchant receipt (formatted text) | [optional] 
