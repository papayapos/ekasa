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

#### Cancel last transaction

```bash
curl --location --request POST 'http://localhost:13083/api/terminal/pay' \
--data-raw '{
    "externalId": "52f3af60-50ai-42a6-a333-er57278477rk",
    "requestContents": {
        "operation": "CC",
        "transactionId": "52f3af60-50ai-42a6-a333-er57278477rk",
        "hostTransId" : "hostTransId of previous transaction"
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
**transactionId** | **String(40)** | ID of the transaction, for the terminal | [optional] 
**hostTransId** | **String** | ID of previous transaction, for the terminal | [only for CC] 
**invNumber** | **String** |  | [optional]

### Example Response Body

```yaml
{
  "content" {
      "customerReceipt": "Customer receipt (formatted text)",
      "merchantReceipt": "Merchant receipt (formatted text)",
      "result": "0",
      "respMessage": "Ok",

      "terminalId": "TEST",
      "transactionId": "28f3af59-52af-42a6-a217-fc26278482db",


      "aid": "A0000000000000",
      "authCode": "DE900000",
      "cardBrand": "Visa Debit",
      "hostTransId": "",
      "currencyCode": "978",
      "maskedPan": "222222******3825",
      "sequenceNumber": "001010000",
      "bin": "479608",
      "hostRc": "proident qui",
      "pinIndicator": "N",
      "signature": "N",
      "transactionTime": "20191218101551"
      
  },
  "status": {
    "code": 100
  },
  "success": true,

}
```

### Response Parameters

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **Boolean** | shows if the payment process succeeded | [optional] 
**content** | [**PaxPaymentResponse**](TerminalCardPaymentApi.md#PaxPaymentResponse) | includes all available data about payment | [optional] 
**status** | [**EkasaStatus**](EkasaStatus.md) |  | [optional] 

#### PaxPaymentResponse

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**result** | **String** | Operation result: 0 - success, 1 - canceled by user, 2 to 9 - transaction failed (for reason look for respMessage)  | [optional] 
**respMessage** | **String** | Additional text information of Transaction result. It could be sent by host ,or locally by Payment application. | [optional] 
**authCode** | **String** | Autorisation Code | [optional] 
**cardBrand** | **String** | Card Brand (VISA , MasterCard ...) | [optional] 
**bin** | **String** | Card BIN (first 6 digits of card number) | [optional] 
**hostRc** | **String** | Host response code | [optional] 
**pinIndicator** | **String** | Information , whether PIN was entered (Values: Y/N) | [optional] 
**signature** | **String** | Information , whether Signature checking is required (Values: Y/N) | [optional] 
**customerReceipt** | **String** | Customer receipt (formatted text) | [optional] 
**merchantReceipt** | **String** | Merchant receipt (formatted text) | [optional] 
**transactionTime** | **String** | Time the transaction was closed, in format yyyymmddHHMMSS | example "20191218101551"