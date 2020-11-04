# Papaya Ekasa API

## Documentation for API Endpoints

All URIs are relative to *https://localhost:13083*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OpenapiClient::CashApi* | [**do_post1**](docs/CashApi.md#do_post1) | **POST** /api/cash | Cash deposit/withdraw
*OpenapiClient::DocumentApi* | [**do_post10**](docs/DocumentApi.md#do_post10) | **POST** /api/document/update | Update broken document
*OpenapiClient::DocumentApi* | [**do_post2**](docs/DocumentApi.md#do_post2) | **POST** /api/document/get | Get document
*OpenapiClient::DocumentApi* | [**do_post4**](docs/DocumentApi.md#do_post4) | **POST** /api/document/get/offline | Get offline documents
*OpenapiClient::DocumentApi* | [**do_post6**](docs/DocumentApi.md#do_post6) | **POST** /api/document/send/offline | Send offline requests
*OpenapiClient::DocumentApi* | [**do_post7**](docs/DocumentApi.md#do_post7) | **POST** /api/document/store | Store document
*OpenapiClient::LocationApi* | [**do_post11**](docs/LocationApi.md#do_post11) | **POST** /api/location/update | Update location
*OpenapiClient::MerchantApi* | [**do_post3**](docs/MerchantApi.md#do_post3) | **POST** /api/merchant/get | Get merchant
*OpenapiClient::MerchantApi* | [**do_post8**](docs/MerchantApi.md#do_post8) | **POST** /api/merchant/store | Store merchant
*OpenapiClient::OtherApi* | [**do_post9**](docs/OtherApi.md#do_post9) | **POST** /api/print | Print string
*OpenapiClient::TerminalApi* | [**do_post**](docs/TerminalApi.md#do_post) | **POST** /api/terminal/pay | Card payment
*OpenapiClient::TerminalApi* | [**do_post5**](docs/TerminalApi.md#do_post5) | **POST** /api/terminal/totals | Terminal totals report


## Documentation for Models

 - [OpenapiClient::CardPaymentRequest](docs/CardPaymentRequest.md)
 - [OpenapiClient::CardPaymentResponse](docs/CardPaymentResponse.md)
 - [OpenapiClient::Cash](docs/Cash.md)
 - [OpenapiClient::CashRequest](docs/CashRequest.md)
 - [OpenapiClient::CashResponse](docs/CashResponse.md)
 - [OpenapiClient::Customer](docs/Customer.md)
 - [OpenapiClient::Document](docs/Document.md)
 - [OpenapiClient::DocumentByExternalId](docs/DocumentByExternalId.md)
 - [OpenapiClient::DocumentByOkp](docs/DocumentByOkp.md)
 - [OpenapiClient::DocumentBySequenceId](docs/DocumentBySequenceId.md)
 - [OpenapiClient::DocumentByUUID](docs/DocumentByUUID.md)
 - [OpenapiClient::DocumentItem](docs/DocumentItem.md)
 - [OpenapiClient::DocumentReceiptItem](docs/DocumentReceiptItem.md)
 - [OpenapiClient::DocumentResponse](docs/DocumentResponse.md)
 - [OpenapiClient::EkasaError](docs/EkasaError.md)
 - [OpenapiClient::EkasaStatus](docs/EkasaStatus.md)
 - [OpenapiClient::EkasaWarning](docs/EkasaWarning.md)
 - [OpenapiClient::FixLocation](docs/FixLocation.md)
 - [OpenapiClient::GetDocumentRequest](docs/GetDocumentRequest.md)
 - [OpenapiClient::GetMerchantRequest](docs/GetMerchantRequest.md)
 - [OpenapiClient::Gps](docs/Gps.md)
 - [OpenapiClient::Location](docs/Location.md)
 - [OpenapiClient::LocationResponse](docs/LocationResponse.md)
 - [OpenapiClient::Merchant](docs/Merchant.md)
 - [OpenapiClient::MerchantByCashRegisterCode](docs/MerchantByCashRegisterCode.md)
 - [OpenapiClient::MerchantBySequenceId](docs/MerchantBySequenceId.md)
 - [OpenapiClient::MerchantResponse](docs/MerchantResponse.md)
 - [OpenapiClient::MerchantSecurityData](docs/MerchantSecurityData.md)
 - [OpenapiClient::OfflineDocumentsFilter](docs/OfflineDocumentsFilter.md)
 - [OpenapiClient::OrganizationUnit](docs/OrganizationUnit.md)
 - [OpenapiClient::PaxPaymentRequest](docs/PaxPaymentRequest.md)
 - [OpenapiClient::PaxPaymentResponse](docs/PaxPaymentResponse.md)
 - [OpenapiClient::PaxTotalsResponse](docs/PaxTotalsResponse.md)
 - [OpenapiClient::PaxTotalsResponseCounter](docs/PaxTotalsResponseCounter.md)
 - [OpenapiClient::PaymentTotalsRequest](docs/PaymentTotalsRequest.md)
 - [OpenapiClient::PaymentTotalsResponse](docs/PaymentTotalsResponse.md)
 - [OpenapiClient::PhysicalAddress](docs/PhysicalAddress.md)
 - [OpenapiClient::PrintStringRequest](docs/PrintStringRequest.md)
 - [OpenapiClient::Printer](docs/Printer.md)
 - [OpenapiClient::RawResponse](docs/RawResponse.md)
 - [OpenapiClient::Seller](docs/Seller.md)
 - [OpenapiClient::StoreDocumentRequest](docs/StoreDocumentRequest.md)
 - [OpenapiClient::StoreMerchantRequest](docs/StoreMerchantRequest.md)
 - [OpenapiClient::UpdateLocationRequest](docs/UpdateLocationRequest.md)
 - [OpenapiClient::VatRateSum](docs/VatRateSum.md)


## Documentation for Authorization

 All endpoints do not require authorization.

