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
	"keyStorePassword" : "Heslo123",
	"privateKeyPassword" : "Heslo123",
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
  "keyStorePassword" : "Heslo123",
  "privateKeyPassword" : "Heslo123"
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
