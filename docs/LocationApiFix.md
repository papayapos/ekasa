# LocationApi

All URIs are relative to *https://localhost:13083*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Update location**](LocationApiUpdate.md#UpdateLocation) | **POST** /api/location/update | Update location
[**Fix location**](LocationApiFix.md#FixLocation) | **POST** /api/location/update | Fix location

## Update Location

> Update location

Update cash register location

### Example

```bash
curl --location --request POST 'http://localhost:13083/api/location/update' \
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
**fixLocation** | [**FixLocation**](LocationApiFix.md#FixLocation) |  | [optional] 

### FixLocation

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | [**EkasaStatus**](EkasaStatus.md) |  | [optional] 
**printerStatus** | **String** | Printer status | [optional] 
**createDate** | **DateTime** |  | [optional] 
**physicalAddress** | [**PhysicalAddress**](LocationApiFix.md#PhysicalAddress) |  | [optional] 
**gps** | [**Gps**](LocationApiFix.md#Gps) |  | [optional] 
**other** | **String** |  | [optional] 
**useLastMerchant** | **Boolean** |  | [optional] 

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
**location** | [**Location**](LocationApiFix.md#Location) |  | [optional] 
**errorMessage** | **String** |  | [optional] 

### Location

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | [**EkasaStatus**](EkasaStatus.md) |  | [optional] 
**printerStatus** | **String** | Printer status | [optional] 
**internalId** | **Integer** |  | [optional] 
**physicalAddress** | [**PhysicalAddress**](LocationApiFix.md#PhysicalAddress) |  | [optional] 
**gps** | [**Gps**](LocationApiFix.md#Gps) |  | [optional] 
**other** | **String** |  | [optional] 
**createDate** | **DateTime** |  | [optional] 
**processDate** | **DateTime** |  | [optional] 
**cashRegisterCode** | **String** |  | [optional] 
**merchant** | [**Merchant**](MerchantApiGet.md#Merchant) |  | [optional] 
**sendingCount** | **Integer** |  | [optional] 

### GPS

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**x** | **Float** | GPS X coordinate of the venue | [optional] 
**y** | **Float** | GPS Y coordinate of the venue | [optional] 

### PhysicalAddress

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**country** | **String** | Country. e.g. Slovenská Republika | [optional] 
**municipality** | **String** | Municipality, its name of town, e.g. Karlova ves | [mandatory] 
**street** | **String** | Name of the street, e.g. Čaklovská | [mandatory] 
**buildingNumber** | **String** | orientačné číslo | [optional] 
**propertyRegistrationNumber** | **String** | číslo budovy | [optional] 
**postalCode** | **String** | Postal code | [mandatory] 