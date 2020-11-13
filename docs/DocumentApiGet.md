# DocumentApi

All URIs are relative to *https://localhost:13083*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Store**](DocumentApiStore.md#StoreDocument) | **POST** /api/document/store | Create new receipt
[**Get**](DocumentApiGet.md#GetDocument) | **POST** /api/document/get | Get last document
[**Get Offline**](DocumentApiGetOffline.md#GetOffline) | **POST** /api/document/get/offline | Get offline documents
[**Send Offline**](DocumentApiSendOffline.md#SendOffline) | **POST** /api/document/send/offline | Send offline requests
[**Fix Document**](DocumentApiFix.md#FixDocument) | **POST** /api/document/update | Update broken document


## GetDocument

Create new receipt

### Example

```bash
curl --location --request POST 'http://localhost:13083/api/document/get' \
--data-raw '{
        "printer" : {
        }
}'
```

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### Example Request Body

```yaml
{
        "printer" : {
        }
}
```

### Request Parameters

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**printer** | [**Printer**](Printer.md) |  | 

### Example Response Body

```yaml
{
    "document": {
        "amount": 237.12,
        "cashRegisterCode": "88812345678900001",
        "createDate": "10.11.2020 15:51:33",
        "customer": {},
        "documentEntries": [
            {
                "name": "Tovar 1 湯",
                "price": 75.0,
                "quantity": 2.0,
                "seller": {},
                "totalPrice": 150.0,
                "type": "SALE",
                "vatRate": "VAT_20"
            },
            {
                "name": "Tovar 2",
                "price": 87.12,
                "quantity": 1.0,
                "seller": {},
                "totalPrice": 87.12,
                "type": "SALE",
                "vatRate": "VAT_10"
            },
            {
                "name": "Tovar X",
                "price": 10.0,
                "quantity": 1.0,
                "seller": {},
                "totalPrice": 10.0,
                "type": "SALE",
                "vatRate": "VAT_0"
            },
            {
                "name": "JUP",
                "price": -15.0,
                "quantity": 1.0,
                "seller": {},
                "totalPrice": -15.0,
                "type": "VOUCHER",
                "vatRate": "VAT_0",
                "voucherNumber": "123"
            }
        ],
        "electronic": false,
        "exception": false,
        "footer": "",
        "header": "",
        "internalDocumentId": 28825,
        "isParagon": false,
        "issueDate": "10.11.2020 15:51:33",
        "merchant": {
            "corporateFullName": "O.C.a.F.A. STANDARD_ICDPH",
            "dic": "1234567890",
            "icDph": "SK9999999999",
            "ico": "99999999",
            "id": 9113,
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
        "okp": "B0B94617-1C370F47-95CB1FEC-C79F5B06-AF2381B3",
        "pkp": "eQDvZyenlIT/WjJmmue4TNj+oZkbSwdQ8h5ezGnyfnyo2VDTWzSZSz7BlMLp\nZjpcYkRJsKBPDn+tVQzW3qGwPWb1pcYKby6mgjDU1rDclCexxJDVvUNia2sh\npTiG7ggCaxvQlTNXad6Gu3NDFLGTuEwAl1ghCvIQDAE0UVlv4US0Nus0ZPYv\n3I4NLgy5e9OBtP1ErTzYifp8CtRxnkXWaTSSAbNIdaLqNRh2uUIQEbpZsFiY\nTLxxgOPHBPZju1y+hQeu1/KuCDz9ovkGnnEzv5NZwD8b0tO4FG3AmtfkLLR4\nd998CsqoNf4I4ZmT11LZuOmctGHl1VMc2GPEl5SzLw==",
        "processDate": "10.11.2020 15:51:36",
        "qrCode": "O-39CC092984CA42818C092984CAB-TEST",
        "sendingCount": 1,
        "sequenceId": 15,
        "type": "PD",
        "uuid": "O-39CC092984CA42818C092984CAB-TEST",
        "vatRateSums": [
            {
                "base": 125.0,
                "sum": 150.0,
                "title": "VAT_20",
                "vat": 25.0
            },
            {
                "base": 79.2,
                "sum": 87.12,
                "title": "VAT_10",
                "vat": 7.92
            },
            {
                "base": 0.0,
                "sum": 0.0,
                "title": "VAT_0",
                "vat": 0
            },
            {
                "base": 204.2,
                "sum": 237.12,
                "title": "TOTAL",
                "vat": 32.92
            }
        ]
    }
}
```

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**warning** | **String** | Filled only if any warning | [optional] 
**document** | [**Document**](Document.md) |  | [optional] 
**error_message** | **String** |  | [optional] 