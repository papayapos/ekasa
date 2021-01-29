# TerminalApi

All URIs are relative to *https://localhost:13083*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Terminal Activation**](docs/TerminalApiRegister.md#Activation) | **POST** /api/terminal/register | Terminal Activation and Registration
[**Card Payment**](TerminalApiCardPayment.md#CardPayment) | **POST** /api/terminal/pay | Card payment
[**Totals**](TerminalApiTotals.md#Totals) | **POST** /api/terminal/totals | Terminal totals report

# Activation

### Example

```bash
curl --location --request POST 'http://localhost:13083/api/terminal/pay' \
--data-raw '{
  "merchantName":"TEST",
  "ico":"99999999",
  "dic":"1234567890",
  "merchantAddress":{
    "country":"Slovenská republika",
    "city":"Bratislava",
    "street":"Miletičova",
    "number":"4",
    "postalCode":"99999"
  },
  "venueName":"prevadzka",
  "venueAddress":{
    "country":"Slovenská republika",
    "city":"Bratislava",
    "street":"Miletičova",
    "number":"4",
    "postalCode":"99999"
  },
  "terminalId":"99887766"
}'
```

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### Example Request Body

```yaml
{
  "merchantName":"TEST",
  "ico":"99999999",
  "dic":"1234567890",
  "merchantAddress":{
    "country":"Slovenská republika",
    "city":"Bratislava",
    "street":"Miletičova",
    "number":"4",
    "postalCode":"99999"
  },
  "venueName":"prevadzka",
  "venueAddress":{
    "country":"Slovenská republika",
    "city":"Bratislava",
    "street":"Miletičova",
    "number":"4",
    "postalCode":"99999"
  },
  "terminalId":"99887766"
}
```

### Request Parameters

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**merchantName** | **String** | Name of the merchant registered for terminal | [mandatory]
**ico** | **String** | ICO of the merchant registered for terminal   | [mandatory] 
**dic** | **String** | DIC of the merchant registered for terminal | [optional]
**merchantAddress** | [**Merchant Address**](TerminalApiRegister.md#MerchantAddress) | Address of the merchant registered for terminal | [optional] 
**venueName** | **String** | Name of the merchant registered for terminal | [optional]
**venueAddress** | [**Venue Address**](TerminalApiRegister.md#VenueAddress) | Address of the venue that is registered for terminal. | [optional] 
**terminalId** | **String** | TID of the terminal | [mandatory] 


#### MerchantAddress

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**country** | **String** | Country. e.g. Slovenská Republika | [optional] 
**city** | **String** | Municipality, its name of town, e.g. Bratislava | [mandatory] 
**street** | **String** | Name of the street, e.g. Čaklovská | [mandatory] 
**number** | **String** | číslo | [optional] 
**postalCode** | **String** | Postal code | [mandatory] 


#### VenueAddress

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**country** | **String** | Country. e.g. Slovenská Republika | [optional] 
**city** | **String** | Municipality, its name of town, e.g. Bratislava | [mandatory] 
**street** | **String** | Name of the street, e.g. Čaklovská | [mandatory] 
**number** | **String** | číslo | [optional] 
**postalCode** | **String** | Postal code | [mandatory] 