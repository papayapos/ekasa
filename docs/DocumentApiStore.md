# DocumentApi

All URIs are relative to *https://localhost:13083*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Store**](DocumentApiStore.md#StoreDocument) | **POST** /api/document/store | Create new receipt
[**Get**](DocumentApiGet.md#GetDocument) | **POST** /api/document/get | Get last document
[**Get Offline**](DocumentApiGetOffline.md#GetOffline) | **POST** /api/document/get/offline | Get offline documents
[**Send Offline**](DocumentApiSendOffline.md#SendOffline) | **POST** /api/document/send/offline | Send offline requests
[**Fix Document**](DocumentApiFix.md#FixDocument) | **POST** /api/document/update | Update broken document


## StoreDocument

Create new receipt

### Example

```bash
curl --location --request POST 'http://localhost:13083/api/document/store' \
--data-raw '{
    "header" : "Dobry den",
    "footer" : "Tips not included",

    "type" : "PD",
    "amount" : 237.12,

    "documentEntries" : [
        {"price" : 75, "quantity" : 2, "name" : "Tovar 1", "vatRate" : "VAT_20", "itemType" : "SALE"},
        {"price" : 87.123, "quantity" : 1, "name" : "Tovar 2", "vatRate" : "VAT_10", "itemType" : "SALE"},
        {"price" : 10, "quantity" : 1, "name" : "Tovar X", "vatRate" : "VAT_0", "itemType" : "SALE", "voucherNumber" :  "123"},
        {"price" : -15, "quantity" : 1, "name" : "JUP", "vatRate" : "VAT_0", "itemType" : "VOUCHER", "voucherNumber" :  "123"}
    ],

    "payments" : {
        "Card" : 237.12
    },

    "printer" : {
        "socket" : "tcp://192.168.88.87:9100",
        "numberOfCharInRow" : 48,
        "codingNumber" : 30
    }
}'
```

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### Example Request Body

```yaml
{
    "header" : "Dobry den",
    "footer" : "Tips not included",

    "type" : "PD",
    "amount" : 237.12,

    "documentEntries" : [
        {"price" : 75, "quantity" : 2, "name" : "Tovar 1", "vatRate" : "VAT_20", "itemType" : "SALE"},
        {"price" : 87.123, "quantity" : 1, "name" : "Tovar 2", "vatRate" : "VAT_10", "itemType" : "SALE"},
        {"price" : 10, "quantity" : 1, "name" : "Tovar X", "vatRate" : "VAT_0", "itemType" : "SALE", "voucherNumber" :  "123"},
        {"price" : -15, "quantity" : 1, "name" : "JUP", "vatRate" : "VAT_0", "itemType" : "VOUCHER", "voucherNumber" :  "123"}
    ],

    "payments" : {
        "Card" : 237.12
    },

    "printer" : {
        "socket" : "tcp://192.168.88.87:9100",
        "numberOfCharInRow" : 48,
        "codingNumber" : 30
    }
}
```

### Request Parameters

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Type of document [PD, UF, ND] | PD - receipt, UF - invoice, ND - testing receipt
**external_id** | **String** | External custom id can be set for later search | [optional] 
**invoice_id** | **String** | Id of invoice. Only required if document type is UF | [optional] 
**amount** | **Float** | Amount of receipt. This is checked against sum of all items | 
**customer** | [**Customer**](DocumentApiStore.md#Customer) |  | [optional] 
**paragon_date** | **DateTime** | If this is parameter is filled, evidence of paragon is going to be sent to eKasa and printed | [optional] 
**document_entries** | [**Array&lt;DocumentReceiptItem&gt;**](DocumentApiStore.md#DocumentReceiptItem) | Items sold on receipt. | [optional] 
**payments** | **Hash&lt;String, Float&gt;** | Payment types and sums used for receipt payment. This parameter sum is NOT! checked against receipt sum. | [optional] 
**header** | **String** | Custom header to print at the top of the receipt | [optional] 
**footer** | **String** | Custom footer to print at the bottom of the receipt | [optional] 
**printer** | [**Printer**](Printer.md) |  | 
**electronic_receipt** | **Boolean** | If client wants electronic receipt, set true. Receipt will not be printed only if is online. For offline receipt will be printed. | [optional] 
**exception** | **Boolean** |  | [optional] 

#### DocumentReceiptItem

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external_id** | **String** | External id | [optional] 
**price** | **Float** | Unit price of the item, not the summary! | 
**quantity** | **Float** | Quantity of the item | 
**name** | **String** | Name of the item | 
**reference_document_id** | **String** | Reference id of receipt which this UPDATE or REFUND applies on | [optional] 
**vat_rate** | **String** | VAT rate assigned to the item | 
**item_type** | **String** | Document item type [SALE, PACKING_REFUND, REFUND, UPDATE, DISCOUNT, DEPOSIT, VOUCHER] | DEPOSIT - down payment for goods made in advance, VOUCHER - one-purpose voucher for specific product
**special_regulation** | **String** | Specification of reason for 0% VAT rate (optional) | [optional] 
**seller** | [**Seller**](DocumentApiStore.md#Seller.md) |  | [optional] 
**voucher_number** | **String** | Number of exchange voucher if itemType is VOUCHER | [optional] 

#### Seller

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Seller id | 
**seller_id_type** | **String** | Seller id type | 

#### VatRateSum

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** | Vat rate type. Allowed values VAT_0, VAT_10, VAT_20 | [optional] 
**base** | **Float** | Base sum for vat | [optional] 
**vat** | **Float** | Issued vat | [optional] 
**sum** | **Float** | Total sum with vat | [optional] 

#### Customer

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**printer_status** | **String** | Printer status | [optional] 
**id** | **String** | Customer ID. Only numbers and alpha numeric characters are allowed | 
**customer_id_type** | **String** | Customer type can be ICO, DIC, IC_DPH, or INE | 

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
                "name": "Tovar 1",
                "price": 75.0,
                "quantity": 2,
                "totalPrice": 150.0,
                "type": "SALE",
                "vatRate": "VAT_20"
            },
            {
                "name": "Tovar 2",
                "price": 87.123,
                "quantity": 1,
                "totalPrice": 87.12,
                "type": "SALE",
                "vatRate": "VAT_10"
            },
            {
                "name": "Tovar X",
                "price": 10.0,
                "quantity": 1,
                "totalPrice": 10.0,
                "type": "SALE",
                "vatRate": "VAT_0",
                "voucherRef": "123"
            },
            {
                "name": "JUP",
                "price": -15.0,
                "quantity": 1,
                "totalPrice": -15.0,
                "type": "VOUCHER",
                "vatRate": "VAT_0",
                "voucherNumber": "123"
            }
        ],
        "electronic": false,
        "electronicReceipt": "",
        "exception": false,
        "footer": "Tips not included",
        "header": "Dobry den",
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
        "paymentTypes": {
            "Card": 237.12
        },
        "pkp": "eQDvZyenlIT/WjJmmue4TNj+oZkbSwdQ8h5ezGnyfnyo2VDTWzSZSz7BlMLp\r\nZjpcYkRJsKBPDn+tVQzW3qGwPWb1pcYKby6mgjDU1rDclCexxJDVvUNia2sh\r\npTiG7ggCaxvQlTNXad6Gu3NDFLGTuEwAl1ghCvIQDAE0UVlv4US0Nus0ZPYv\r\n3I4NLgy5e9OBtP1ErTzYifp8CtRxnkXWaTSSAbNIdaLqNRh2uUIQEbpZsFiY\r\nTLxxgOPHBPZju1y+hQeu1/KuCDz9ovkGnnEzv5NZwD8b0tO4FG3AmtfkLLR4\r\nd998CsqoNf4I4ZmT11LZuOmctGHl1VMc2GPEl5SzLw==",
        "processDate": "10.11.2020 15:51:36",
        "qrCode": "O-39CC092984CA42818C092984CAB-TEST",
        "sendingCount": 1,
        "sequenceId": 15,
        "status": {},
        "type": "PD",
        "uuid": "O-39CC092984CA42818C092984CAB-TEST",
        "vatRateSums": [
            {
                "base": 0.0,
                "sum": 0.0,
                "title": "VAT_0",
                "vat": 0.0
            },
            {
                "base": 79.2,
                "sum": 87.12,
                "title": "VAT_10",
                "vat": 7.92
            },
            {
                "base": 125.0,
                "sum": 150.0,
                "title": "VAT_20",
                "vat": 25.0
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