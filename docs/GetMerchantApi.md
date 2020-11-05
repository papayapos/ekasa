# MerchantApi

All URIs are relative to *http://localhost:13083*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get Merchant**](GetMerchantApi.md#GetMerchant) | **POST** /api/merchant/get | Get merchant
[**Store Merchant**](StoreMerchantApi.md#StoreMerchant) | **POST** /api/merchant/store | Store merchant

## GetMerchant

> Get last merchant

eKasa returns info of actual merchant that is stored in CHDU

### Example

```bash
curl --location --request POST 'http://localhost:13083/api/merchant/get' \
--data-raw '{}'
```

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### Example Request Body

```yaml
{
  "merchantBySequenceId": {
      "id": 87211711
  },
  "merchantByCashRegisterCode": {
      "cashRegisterCode": "88812345678900001"
  }
}
```

### Request Parameters

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**merchant_by_sequence_id** | [**MerchantBySequenceId**](MerchantBySequenceId.md) |  | [optional] 
**merchant_by_cash_register_code** | [**MerchantByCashRegisterCode**](MerchantByCashRegisterCode.md) |  | [optional] 

#### MerchantBySequenceId

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Sequence Id | 

#### MerchantByCashRegisterCode

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cash_register_code** | **String** | Cash register code | 

### Example Response Body

```yaml
{
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
  }
}
```

### Response Parameters

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**warning** | **String** | Filled only if any warning | [optional] 
**merchant** | [**Merchant**](MerchantApi.md#Merchant) |  | [optional] 
**error_message** | **String** |  | [optional] 

#### Merchant

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | [**EkasaStatus**](EkasaStatus.md) |  | [optional] 
**printer_status** | **String** | Printer status | [optional] 
**id** | **Integer** | Generated ID by PPEKK | [optional] 
**corporate_full_name** | **String** | Corporate name as written in register | [optional] 
**ico** | **String** | Company ID | [optional] 
**dic** | **String** | Company DIC | [optional] 
**ic_dph** | **String** | Vat number of the company. If filled, merchant is automatically taken as Tax payer, otherwise merchant is set as NON! Tax payer | [optional] 
**physical_address** | [**PhysicalAddress**](PhysicalAddress.md) |  | [optional] 
**organization_unit** | [**OrganizationUnit**](OrganizationUnit.md) |  | [optional] 