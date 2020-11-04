# TerminalApi

All URIs are relative to *https://localhost:13083*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Card Payment**](TerminalApi.md#CardPayment) | **POST** /api/terminal/pay | Card payment
[**Totals**](TerminalApi.md#Totals) | **POST** /api/terminal/totals | Terminal totals report


# CardPayment

Start a card payment. Only one terminal operation can be running at once

### Example

```bash
curl --location --request POST 'http://{{base_url}}:13083/api/terminal/pay' \
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
**request_contents** | [**PaxPaymentRequest**](TerminalApi.md#PaxPaymentRequest) |  | [optional] 
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
**message** | [**PaxPaymentResponse**](TerminalApi.md#PaxPaymentResponse) |  | [optional] 
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

## Totals

Terminal totals report

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
**message** | [**PaxTotalsResponse**](TerminalApi.md#PaxTotalsResponse) |  | [optional] 
**error_message** | **String** |  | [optional] 

#### PaxTotalsResponse

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**result** | **String** | Operation result. \&quot;0\&quot; for success, anything else for failure | [optional] 
**resp_message** | **String** | Additional text information. | [optional] 
**host_counters** | [**Array&lt;PaxTotalsResponseCounter&gt;**](TerminalApi.md#PaxTotalsResponseCounter) |  | [optional] 
**terminal_counters** | [**Array&lt;PaxTotalsResponseCounter&gt;**](TerminalApi.md#PaxTotalsResponseCounter) |  | [optional] 
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
