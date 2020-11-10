# CustomPrintApi

All URIs are relative to *https://localhost:13083*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Print**](CustomPrintApi.md#Print) | **POST** /api/print | Print custom string

## Print

> Print string

Print custom string on eKasa

### Example

```bash
curl --location --request POST 'http://localhost:13083/api/print' \
--data-raw '{
    "printer" : {},
    "printData": "I am custom text printed on eKasa :)"
}'
```

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### Example Request Body

```yaml
{
    "printer" : {},
    "printData": "I am custom text printed on eKasa :)"
}
```

### Request Parameters

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**print_data** | **String** | Raw data in string for printing | [required] 
**printer** | [**Printer**](Printer.md) | Printer details, for Pax only empty object is needed | [required]

### Example Response Body

```yaml
{
  "rawData": "I am custom text printed on eKasa :)"
}
```

### Response Parameters

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**warning** | **String** | Filled only if any warning | [optional] 
**raw_data** | **String** | Printed data | [required] 
**error_message** | **String** |  | [optional] 

