# StatusApi

All URIs are relative to *https://localhost:13083*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Status Printer**](StatusApi.md#Printer) | **POST** /api/status/printer | Get printer status

## Printer

> Printer Status

Setup custom settings for eKasa Pay

### Example

```bash
curl --location --request POST 'http://localhost:13083/api/status/printer' \
--data-raw '{}'
```

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### Example Request Body

```yaml
{}
```

### Request Parameters

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------

### Example Response Body

```yaml
{
  "ready" : true
}
```

### Response Parameters

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ready** | **Boolean** | True if printer is ready to print | [required]
**warning** | **String** | Filled only if any warning | [optional] 
**errorMessage** | **String** |  | [optional] 