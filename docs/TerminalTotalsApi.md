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
**print_receipt** | **Boolean** | set if the terminal should print a receipt immediately. Receipt data us sent back in the response regardless of this setting | [optional] 
**transaction_id** | **String** |  | [optional] 
**sub_totals** | **Boolean** |  | [optional] 

### Example Response Body

```yaml
{
  "warning": "Warning, you should solve this, but eKasa works",
  "success": false,
  "message": {
    "Result": "0",
    "RespMessage": "incididunt ad",
    "HostCounters": [
      {
        "RecordId": "VISA",
        "DebitCount": "1",
        "DebitAmount": "1.5",
        "CreditCount": "3",
        "CreditAmount": "25.35"
      },
      {
        "RecordId": "VISA",
        "DebitCount": "1",
        "DebitAmount": "1.5",
        "CreditCount": "3",
        "CreditAmount": "25.35"
      }
    ],
    "TerminalCounters": [
      {
        "RecordId": "VISA",
        "DebitCount": "1",
        "DebitAmount": "1.5",
        "CreditCount": "3",
        "CreditAmount": "25.35"
      },
      {
        "RecordId": "VISA",
        "DebitCount": "1",
        "DebitAmount": "1.5",
        "CreditCount": "3",
        "CreditAmount": "25.35"
      }
    ],
    "CustomerReceipt": "nisi in dolor",
    "MerchantReceipt": "deserunt laborum laboris Duis"
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
**error_message** | **String** |  | [optional] 

#### PaxTotalsResponse

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**result** | **String** | Operation result. \&quot;0\&quot; for success, anything else for failure | [optional] 
**resp_message** | **String** | Additional text information. | [optional] 
**host_counters** | [**Array&lt;PaxTotalsResponseCounter&gt;**](TerminalTotalsApi.md#PaxTotalsResponseCounter) |  | [optional] 
**terminal_counters** | [**Array&lt;PaxTotalsResponseCounter&gt;**](TerminalTotalsApi.md#PaxTotalsResponseCounter) |  | [optional] 
**customer_receipt** | **String** | Customer receipt (formatted text) | [optional] 
**merchant_receipt** | **String** | Merchant receipt (formatted text) | [optional] 

#### PaxTotalsResponseCounter

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**record_id** | **String** | Name of the record | [optional] 
**debit_count** | **String** | Number of debit card transactions | [optional] 
**debit_amount** | **String** | Total value of debit card transactions | [optional] 
**credit_count** | **String** | Number of credit card transactions | [optional] 
**credit_amount** | **String** | Total value of credit card transactions | [optional] 
