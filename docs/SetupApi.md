# SetupApi

All URIs are relative to *https://localhost:13083*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Setup**](SetupApi.md#Setup) | **POST** /api/setup | Setup eKasa Pay settings

## Setup

> eKasa Pay Settings

Setup custom settings for eKasa Pay

### Example

```bash
curl --location --request POST 'http://localhost:13083/api/setup' \
--data-raw '{
    "hideFrontActivity" : true
}'
```

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### Example Request Body

```yaml
{
    "hideFrontActivity" : true
}
```

### Request Parameters

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hideFrontActivity** | **Boolean** | Switch hide/show eKasa Pay front activity | [optional]

### Example Response Body

```yaml
{
  "hideFrontActivity" : true
}
```

### Response Parameters

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hideFrontActivity** | **Boolean** | Switch hide/show eKasa Pay front activity | [required]
**warning** | **String** | Filled only if any warning | [optional] 
**errorMessage** | **String** |  | [optional] 

