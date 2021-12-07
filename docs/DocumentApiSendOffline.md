# DocumentApi

All URIs are relative to *https://localhost:13083*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get Offline**](DocumentApiGetOffline.md#GetOffline) | **POST** /api/document/get/offline | Get offline documents
[**Store**](DocumentApiStore.md#StoreDocument) | **POST** /api/document/store | Create new receipt
[**Get**](DocumentApiGet.md#GetDocument) | **POST** /api/document/get | Get last document
[**Send Offline**](DocumentApiSendOffline.md#SendOffline) | **POST** /api/document/send/offline | Send offline requests
[**Fix Document**](DocumentApiFix.md#FixDocument) | **POST** /api/document/update | Update broken document


## SendOffline

Send offline documents

### Example

```bash
curl --location --request POST 'http://localhost:13083/api/document/send/offline' \
--data-raw '{}'
```

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### Example Request Body

```yaml
{
    limit: 10
}
```

### Request Parameters

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
limit | Number | limit how many offline documents to send | -


### Example Response Body

```yaml
{
    "documents": [],
    "locations": [],
    "status": {
        "code": 100
    }
}
```

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**warning** | **String** | Filled only if any warning | [optional]
**locations** | [**[Location]**](Location.md) | array of locations that were send to FP | [optional] 
**documents** | [**[Document]**](Document.md) | array of documents that were send to FP | [optional] 
**errorMessage** | **String** |  | [optional] 