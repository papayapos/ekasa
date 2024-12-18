# MerchantApi

All URIs are relative to *https://localhost:13083*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get Merchant**](MerchantApiGet.md#GetMerchant) | **POST** /api/merchant/get | Get merchant
[**Store Merchant**](MerchantApiStore.md#StoreMerchant) | **POST** /api/merchant/store | Store merchant

## StoreMerchant

> Store merchant

Store new merchant. Up to 20.

### Example

```bash
curl --location --request POST 'http://localhost:13083/api/merchant/store' \
--data-raw '{
	"identificationData" : "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n<eu:IdentityData xmlns:eu=\"http://financnasprava.sk/ekasa/udaje/schema/v2\">\n\t<eu:Dic>1234567890</eu:Dic>\n\t<eu:Ico>99999999</eu:Ico>\n\t<eu:IcDph>SK9999999999</eu:IcDph>\n\t<eu:CorporateBodyFullName>O.C.a.F.A. STANDARD_ICDPH</eu:CorporateBodyFullName>\n\t<eu:OrganizationUnit>\n\t\t<eu:OrganizationUnitName>nepovinný názov predajne</eu:OrganizationUnitName>\n\t\t<eu:PhysicalAddress>\n\t\t\t<eu:Country>Slovenská republika</eu:Country>\n\t\t\t<eu:Municipality>Nitra</eu:Municipality>\n\t\t\t<eu:StreetName>Hospodárska</eu:StreetName>\n\t\t\t<eu:BuildingNumber>21</eu:BuildingNumber>\n\t\t\t<eu:PropertyRegistrationNumber>980</eu:PropertyRegistrationNumber>\n\t\t\t<eu:DeliveryAddress>\n\t\t\t<eu:PostalCode>22222</eu:PostalCode>\n\t\t\t</eu:DeliveryAddress>\n\t\t</eu:PhysicalAddress>\n\t\t<eu:CashRegisterCode>88812345678900001</eu:CashRegisterCode>\n\t\t<eu:CashRegisterType>STANDARD</eu:CashRegisterType>\n\t</eu:OrganizationUnit>\n\t<eu:PhysicalAddress>\n\t\t<eu:Country>Slovenská republika</eu:Country>\n\t\t<eu:Municipality>Bratislava</eu:Municipality>\n\t\t<eu:StreetName>Miletičova</eu:StreetName>\n\t\t<eu:BuildingNumber>4</eu:BuildingNumber>\n\t\t<eu:PropertyRegistrationNumber>22</eu:PropertyRegistrationNumber>\n\t\t<eu:DeliveryAddress>\n\t\t\t<eu:PostalCode>99999</eu:PostalCode>\n\t\t</eu:DeliveryAddress>\n\t</eu:PhysicalAddress>\n</eu:IdentityData>",
  "authenticationData" : "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<eu:AuthData xmlns:eu=\"http://financnasprava.sk/ekasa/udaje/schema/v2\">\n   <eu:KeyStoreType>PKCS12</eu:KeyStoreType>\n   <eu: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</eu:Data>\n   <eu:CertificateAlias>88812345678900001</eu:CertificateAlias>\n</eu:AuthData>",
	"keyStorePassword" : "88812345678900001",
	"privateKeyPassword" : "88812345678900001",
	"integrator" : "APPLE",
  	"dealer" : "GOOGLE"
}'
```
### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### Example Request Body

```yaml
{
  "identificationData" : "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n<eu:IdentityData xmlns:eu=\"http://financnasprava.sk/ekasa/udaje/schema/v2\">\n\t<eu:Dic>1234567890</eu:Dic>\n\t<eu:Ico>99999999</eu:Ico>\n\t<eu:IcDph>SK9999999999</eu:IcDph>\n\t<eu:CorporateBodyFullName>O.C.a.F.A. STANDARD_ICDPH</eu:CorporateBodyFullName>\n\t<eu:OrganizationUnit>\n\t\t<eu:OrganizationUnitName>nepovinný názov predajne</eu:OrganizationUnitName>\n\t\t<eu:PhysicalAddress>\n\t\t\t<eu:Country>Slovenská republika</eu:Country>\n\t\t\t<eu:Municipality>Nitra</eu:Municipality>\n\t\t\t<eu:StreetName>Hospodárska</eu:StreetName>\n\t\t\t<eu:BuildingNumber>21</eu:BuildingNumber>\n\t\t\t<eu:PropertyRegistrationNumber>980</eu:PropertyRegistrationNumber>\n\t\t\t<eu:DeliveryAddress>\n\t\t\t<eu:PostalCode>22222</eu:PostalCode>\n\t\t\t</eu:DeliveryAddress>\n\t\t</eu:PhysicalAddress>\n\t\t<eu:CashRegisterCode>88812345678900001</eu:CashRegisterCode>\n\t\t<eu:CashRegisterType>STANDARD</eu:CashRegisterType>\n\t</eu:OrganizationUnit>\n\t<eu:PhysicalAddress>\n\t\t<eu:Country>Slovenská republika</eu:Country>\n\t\t<eu:Municipality>Bratislava</eu:Municipality>\n\t\t<eu:StreetName>Miletičova</eu:StreetName>\n\t\t<eu:BuildingNumber>4</eu:BuildingNumber>\n\t\t<eu:PropertyRegistrationNumber>22</eu:PropertyRegistrationNumber>\n\t\t<eu:DeliveryAddress>\n\t\t\t<eu:PostalCode>99999</eu:PostalCode>\n\t\t</eu:DeliveryAddress>\n\t</eu:PhysicalAddress>\n</eu:IdentityData>",
  "authenticationData" : "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<eu:AuthData xmlns:eu=\"http://financnasprava.sk/ekasa/udaje/schema/v2\">\n   <eu:KeyStoreType>PKCS12</eu:KeyStoreType>\n   <eu:Data>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</eu:Data>\n   <eu:CertificateAlias>88812345678900001</eu:CertificateAlias>\n</eu:AuthData>",
  "keyStorePassword" : "88812345678900001",
  "privateKeyPassword" : "88812345678900001"
}
```

### Request Parameters

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**identificationData** | **String** | Identification data generated in clients eKasa account. XML file as string. | 
**authenticationData** | **String** | Authentication data generated in clients eKasa account. XML file as string. | 
**keyStorePassword** | **String** | Password for keystore | 
**privateKeyPassword** | **String** | Password for private key | 
**integrator** | **String** | Integrator | 
**dealer** | **String** | Dealer | 


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
**merchant** | [**Merchant**](MerchantApiStore.md#Merchant) |  | [optional] 
**errorMessage** | **String** |  | [optional] 

#### Merchant

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | [**EkasaStatus**](EkasaStatus.md) |  | [optional] 
**printerStatus** | **String** | Printer status | [optional] 
**id** | **Integer** | Generated ID by PPEKK | [optional] 
**corporateFullName** | **String** | Corporate name as written in register | [optional] 
**ico** | **String** | Company ID | [optional] 
**dic** | **String** | Company DIC | [optional] 
**icDph** | **String** | Vat number of the company. If filled, merchant is automatically taken as Tax payer, otherwise merchant is set as NON! Tax payer | [optional] 
**physicalAddress** | [**PhysicalAddress**](MerchantApiStore.md#PhysicalAddress) |  | [optional] 
**organizationUnit** | [**OrganizationUnit**](MerchantApiStore.md#OrganizationUnit) |  | [optional] 

#### PhysicalAddress

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**country** | **String** | Country. e.g. Slovenská Republika | [optional] 
**municipality** | **String** | Municipality, its name of town, e.g. Karlova ves | [mandatory] 
**street** | **String** | Name of the street, e.g. Čaklovská | [mandatory] 
**buildingNumber** | **String** | orientačné číslo | [optional] 
**propertyRegistrationNumber** | **String** | číslo budovy | [optional] 
**postalCode** | **String** | Postal code | [mandatory] 

#### OrganizationUnit

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Venue name (optional) | [optional] 
**cashRegisterCode** | **String** | Code given to cash register by Tax office (mandatory) | 
**cashRegisterType** | **String** | Type of cash register. If mobile define PORTABLE else STANDARD (mandatory) | 
**location** | [**Location**](MerchantApiStore.md#Location) |  | [optional] 

#### Location

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**physicalAddress** | [**PhysicalAddress**](MerchantApiStore.md#PhysicalAddress) |  | [optional] 
