# DocumentApi

All URIs are relative to *https://localhost:13083*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get Offline**](DocumentApiGetOffline.md#GetOffline) | **POST** /api/document/get/offline | Get offline documents
[**Store**](DocumentApiStore.md#StoreDocument) | **POST** /api/document/store | Create new receipt
[**Get**](DocumentApiGet.md#GetDocument) | **POST** /api/document/get | Get last document
[**Send Offline**](DocumentApiSendOffline.md#SendOffline) | **POST** /api/document/send/offline | Send offline requests
[**Fix Document**](DocumentApiFix.md#FixDocument) | **POST** /api/document/update | Update broken document


## GetDocument

Get all offline documents

### Example

```bash
curl --location --request POST 'http://localhost:13083/api/document/get/offline' \
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
    [
        {
            "amount": 3.0,
            "cashRegisterCode": "88812345678900001",
            "createDate": "07.12.2021 14:57:00",
            "customer": {},
            "documentEntries": [
                {
                    "name": "021 Tovar 175g, bale",
                    "price": 3.0,
                    "quantity": 1.0,
                    "seller": {},
                    "totalPrice": 3.0,
                    "type": "SALE",
                    "vatRate": "VAT_20"
                }
            ],
            "electronic": false,
            "exception": false,
            "externalId": "692204241ZWCCBFM",
            "footer": "",
            "header": "",
            "internalDocumentId": 1581,
            "isParagon": false,
            "issueDate": "07.12.2021 14:57:00",
            "merchant": {
                "corporateFullName": "O.C.a.F.A. STANDARD_ICDPH",
                "dic": "1234567890",
                "icDph": "SK9999999999",
                "ico": "99999999",
                "id": 360,
                "organizationUnit": {
                    "cashRegisterCode": "88812345678900001",
                    "cashRegisterType": "STANDARD",
                    "location": {
                        "physicalAddress": {
                            "buildingNumber": "21",
                            "country": "Slovenská republika",
                            "municipality": "Nitra",
                            "postalCode": "22222",
                            "propertyRegistrationNumber": "980",
                            "street": "Hospodárska"
                        }
                    },
                    "name": "nepovinný názov predajne"
                },
                "physicalAddress": {
                    "buildingNumber": "4",
                    "country": "Slovenská republika",
                    "municipality": "Bratislava",
                    "postalCode": "99999",
                    "propertyRegistrationNumber": "22",
                    "street": "Miletičova"
                }
            },
            "okp": "65674ADF-5F4CB684-A0656DAA-8EABB201-3439C33B",
            "pkp": "BD7gQJprYTaTuafdD115a0E99SQmKTq6JGnaRHMYad6Bvh/dCNse+7gQWeHd\nat9mbeMosoh6qhxJ13cWqU3e6uwUOaI2teRuqheCBVqu5ycx3do28Ofr9UG1\nPX+C5Pb/FvcwgtWEXQPW3jqqPB8VxuH435tLPnivBpL+d2F+x/uLSxvD8Abd\n4wwE222UEAucSs2+/bjin0OLBku1XIO+UAokBDMJ5HqUzNTIvQRwkAEc3U5B\nlTs1tNA6P5XUhqdVpJBP2wQvIjTwa543Rz+IoA6oUuiLwSUyWd3amKxdkG6X\nYdfwSlZCiEJcOwIYBPHasiwVb0eLtGcSXyjv7x3xEQ==",
            "qrCode": "65674ADF-5F4CB684-A0656DAA-8EABB201-3439C33B:88812345678900001:211207145700:36:3.00",
            "sendingCount": 1,
            "sequenceId": 36,
            "type": "PD",
            "vatRateSums": [
                {
                    "base": 2.5,
                    "sum": 3.0,
                    "title": "VAT_20",
                    "vat": 0.5
                },
                {
                    "base": 0,
                    "sum": 0,
                    "title": "VAT_10",
                    "vat": 0
                },
                {
                    "base": 0,
                    "sum": 0,
                    "title": "VAT_0",
                    "vat": 0
                },
                {
                    "base": 2.5,
                    "sum": 3.0,
                    "title": "TOTAL",
                    "vat": 0.5
                }
            ]
        }
    ],
    "status": {
        "code": 100
    }
}
```

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**warning** | **String** | Filled only if any warning | [optional]
**document** | [**[Document]**](Document.md) | field of documents that are NOT sent to FP | [optional] 
**errorMessage** | **String** |  | [optional] 