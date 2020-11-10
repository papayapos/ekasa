# Papaya Ekasa API

## Documentation for API Endpoints

All URIs are relative to *https://localhost:13083*

Service | HTTP request | Description
------------- | ------------- | -------------
[**Store Receipt**](docs/DocumentApiStore.md#StoreDocument) | **POST** /api/document/store | Create new receipt
[**Get Receipt**](docs/DocumentApiGet.md#GetDocument) | **POST** /api/document/get | Get last receipt
[**Get Offline**](docs/DocumentApiGetOffline.md#GetOffline) | **POST** /api/document/get/offline | Get offline documents
[**Send Offline**](docs/DocumentApiSendOffline.md#SendOffline) | **POST** /api/document/send/offline | Send offline requests
[**Fix Document**](docs/DocumentApiFix.md#FixDocument) | **POST** /api/document/update | Update broken document
[**Cash**](docs/CashApi.md#CashRequest) | **POST** /api/cash | Cash deposit/withdraw
[**Update location**](docs/LocationApiUpdate.md#UpdateLocation) | **POST** /api/location/update | Update location
[**Fix location**](docs/LocationApiFix.md#FixLocation) | **POST** /api/location/update | Fix location
[**Get Merchant**](docs/MerchantApiGet.md#GetMerchant) | **POST** /api/merchant/get | Get merchant
[**Store Merchant**](docs/MerchantApiStore.md#StoreMerchant) | **POST** /api/merchant/store | Store merchant
[**Card Payment**](docs/TerminalCardPaymentApi.md#CardPayment) | **POST** /api/terminal/pay | Card payment
[**Terminal Totals**](docs/TerminalTotalsApi.md#Totals) | **POST** /api/terminal/totals | Terminal totals report
[**Print**](docs/CustomPrintApi.md#Print) | **POST** /api/print | Print custom string

## Documentation for Authorization

 All endpoints do not require authorization for now.

