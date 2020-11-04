# Papaya Ekasa API

## Documentation for API Endpoints

All URIs are relative to *https://localhost:13083*

Service | HTTP request | Description
------------- | ------------- | -------------
[**Cash**](docs/CashApi.md#do_post1) | **POST** /api/cash | Cash deposit/withdraw
[**Fix document**](docs/DocumentApi.md#do_post10) | **POST** /api/document/update | Update broken document
[**New Document**](docs/DocumentApi.md#do_post7) | **POST** /api/document/store | Store document
[**Get Document**](docs/DocumentApi.md#do_post2) | **POST** /api/document/get | Get last document
[**Get offline**](docs/DocumentApi.md#do_post4) | **POST** /api/document/get/offline | Get offline requests (documents,locations)
[**Send offline**](docs/DocumentApi.md#do_post6) | **POST** /api/document/send/offline | Send offline requests (documents,locations)
[**Update Location**](docs/LocationApi.md#do_post11) | **POST** /api/location/update | Update location
[**Get Merchant**](docs/MerchantApi.md#do_post3) | **POST** /api/merchant/get | Get actual merchant
[**Store Merchant**](docs/MerchantApi.md#do_post8) | **POST** /api/merchant/store | Store new merchant to Chdu
[**Print**](docs/OtherApi.md#do_post9) | **POST** /api/print | Print custom string
[**Payment**](docs/TerminalApi.md#Payment) | **POST** /api/terminal/pay | Card payment
[**Terminal Totals**](docs/TerminalApi.md#Totals) | **POST** /api/terminal/totals | Terminal totals report


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

