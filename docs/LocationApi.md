# LocationApi

All URIs are relative to *https://localhost:13083*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Update location**](LocationApiUpdate.md#UpdateLocation) | **POST** /api/location/update | Update location

## Update Location

> Update location

Update cash register location

### Example

```bash
curl --location --request POST 'http://192.168.0.101:13083/api/location/update' \
--data-raw '{
  "gps": {
		"x": "17.165377",
		"y": "48.148962"
	},
  "printer" : {}
}'
```

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### Example Request Body

```yaml
{
  "gps": {
		"x": "17.165377",
		"y": "48.148962"
	}
}
```

```yaml
{
  "otherLocation": "Taxi ABC SPZ=BA 123 AA"
}
```

```yaml
{
  "physicalAddress": {
		"country": "Slovenská Republika",
		"municipality": "Bratislava",
		"street": "Prievozská",
		"buildingNumber" : "74",
		"postalCode": "82101"
	}
}
```

### Request Parameters

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**create_date** | **DateTime** |  | [optional] 
**physical_address** | [**PhysicalAddress**](PhysicalAddress.md) |  | [optional] 
**gps** | [**Gps**](Gps.md) |  | [optional] 
**other_location** | **String** | Other location | [optional] 
**fix_location** | [**FixLocation**](FixLocation.md) |  | [optional] 

### Example Response

```yaml
{
  "location": {
    "cashRegisterCode": "88812345678900001",
    "createDate": "05.11.2020 15:23:23",
    "gps": {
      "x": 17.165377,
      "y": 48.148962
    },
    "internalId": 28427,
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
      },
     }
    "processDate": "05.11.2020 15:23:23",
    "sendingCount": 1,
    "status": {}
  }
}
```

### Response Parameters

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**warning** | **String** | Filled only if any warning | [optional] 
**location** | [**Location**](LocationApi.md#Location) |  | [optional] 
**error_message** | **String** |  | [optional] 

### Location

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | [**EkasaStatus**](EkasaStatus.md) |  | [optional] 
**printer_status** | **String** | Printer status | [optional] 
**internal_id** | **Integer** |  | [optional] 
**physical_address** | [**PhysicalAddress**](PhysicalAddress.md) |  | [optional] 
**gps** | [**Gps**](Gps.md) |  | [optional] 
**other** | **String** |  | [optional] 
**create_date** | **DateTime** |  | [optional] 
**process_date** | **DateTime** |  | [optional] 
**cash_register_code** | **String** |  | [optional] 
**merchant** | [**Merchant**](Merchant.md) |  | [optional] 
**sending_count** | **Integer** |  | [optional] 

