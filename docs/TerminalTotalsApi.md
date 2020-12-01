# TerminalApi

All URIs are relative to *https://localhost:13083*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Card Payment**](TerminalCardPaymentApi.md#CardPayment) | **POST** /api/terminal/pay | Card payment
[**Totals**](TerminalTotalsApi.md#Totals) | **POST** /api/terminal/totals | Terminal totals report

## Totals

> Terminal totals report

Payment terminal generates a totals/subtotals report

### Example

```bash
curl --location --request POST 'http://localhost:13083/api/terminal/totals' \
--data-raw '{
  "printReceipt": true,
  "transactionId": "urn:uuid:bb78531a-f2f7-c27f-9523-819b1d280a4b",
  "subTotals": false
}'
```

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### Example Request Body

```yaml
{
    "printReceipt": true,
    "transactionId": "urn:uuid:bb78531a-f2f7-c27f-9523-819b1d280a4b",
    "subTotals": false
}
```

### Request Parameters

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**printReceipt** | **Boolean** | set if the terminal should print a receipt immediately. Receipt data us sent back in the response regardless of this setting | [optional] 
**transactionId** | **String** |  | [optional] 
**subTotals** | **Boolean** |  | [optional] 

### Example Response Body

```yaml
{
  "warning": "Warning, you should solve this, but eKasa works",
  "success": false,
  "message": {
    "result": "0",
    "respMessage": "incididunt ad",
    "hostCounters": [
      {
        "recordId": "VISA",
        "debitCount": "1",
        "debitAmount": "1.5",
        "creditCount": "3",
        "creditAmount": "25.35"
      },
      {
        "recordId": "VISA",
        "debitCount": "1",
        "debitAmount": "1.5",
        "creditCount": "3",
        "creditAmount": "25.35"
      }
    ],
    "terminalCounters": [
      {
        "recordId": "VISA",
        "debitCount": "1",
        "debitAmount": "1.5",
        "creditCount": "3",
        "creditAmount": "25.35"
      },
      {
        "recordId": "VISA",
        "debitCount": "1",
        "debitAmount": "1.5",
        "creditCount": "3",
        "creditAmount": "25.35"
      }
    ],
    "customerReceipt": "nisi in dolor",
    "merchantReceipt": "deserunt laborum laboris Duis"
  },
  "errorMessage": "ullamco deserunt eiusmod mollit"
}
```

### Response Parameters

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**warning** | **String** | Filled only if any warning | [optional] 
**success** | **Boolean** | Shows if request processing was successful | [optional] 
**message** | [**PaxTotalsResponse**](TerminalTotalsApi.md#PaxTotalsResponse) |  | [optional] 
**errorMessage** | **String** |  | [optional] 

#### PaxTotalsResponse

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**result** | **String** | Operation result. \&quot;0\&quot; for success, anything else for failure | [optional] 
**respMessage** | **String** | Additional text information. | [optional] 
**hostCounters** | [**Array&lt;PaxTotalsResponseCounter&gt;**](TerminalTotalsApi.md#PaxTotalsResponseCounter) |  | [optional] 
**terminalCounters** | [**Array&lt;PaxTotalsResponseCounter&gt;**](TerminalTotalsApi.md#PaxTotalsResponseCounter) |  | [optional] 
**customerReceipt** | **String** | Customer receipt (formatted text) | [optional] 
**merchantReceipt** | **String** | Merchant receipt (formatted text) | [optional] 

#### PaxTotalsResponseCounter

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**recordId** | **String** | Name of the record | [optional] 
**debitCount** | **String** | Number of debit card transactions | [optional] 
**debitAmount** | **String** | Total value of debit card transactions | [optional] 
**creditCount** | **String** | Number of credit card transactions | [optional] 
**creditAmount** | **String** | Total value of credit card transactions | [optional] 
